import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_state.dart';
import 'package:task/core/helpers/loading_helper.dart';
import 'package:task/core/http/dio_helper/actions/post.dart';
import 'package:task/core/http/generic_http/api_names.dart';
import 'package:task/core/http/models/request_body_model.dart';
class AuthInterceptor extends Interceptor {
  bool isInvalidSession = false;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final result = await refreshToken();
      if (result) {
        final result = await _retry(err, handler);
        if (result) {
          return;
        } else {
          // if (err.requestOptions.headers["requiresToken"] == true && isInvalidSession) getIt<LoadingHelper>().showInvalidSession();
          isInvalidSession = true;
        }
      } else {
        // if (err.requestOptions.headers["requiresToken"] == true && isInvalidSession) getIt<LoadingHelper>().showInvalidSession();
        isInvalidSession = true;
      }
    }
    handler.next(err);
    return;
  }

  Future<bool> refreshToken() async {
    String? refresh = GlobalState.instance.get("refreshToken");
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    var pushToken = await messaging.getToken();
    try {
      RequestBodyModel params = RequestBodyModel(
        url: ApiNames.refresh,
        body: {'refreshToken': refresh, "pushToken": pushToken},
        errorFunc: (data) => data["data"],
      );
      final result = await getIt<Post>()(params);
      if (result.isRight()) {
        var response = result.fold((l) => null, (r) => r);
        Map<String, dynamic> data = response!.data['data'];
        String? accessToken = data['accessToken'];
        String? refreshToken = data['refreshToken'];
        if (accessToken != null && (accessToken.isNotEmpty)) {
          GlobalState.instance.set("accessToken", accessToken);
          GlobalState.instance.set("refreshToken", refreshToken);
          return Future.value(true);
        }
      }
      return Future.value(false);
    } catch (error, s) {
      log('refreshToken in AuthInterceptor error $error | s $s');
      return Future.value(false);
    }
  }

  Future<bool> _retry(DioError dioError, ErrorInterceptorHandler handler) async {
    try {
      final dio = Dio();
      final resistanceAccessToken = GlobalState.instance.get("accessToken");
      dioError.requestOptions.headers["Authorization"] = "Bearer ${resistanceAccessToken!}";
      final opts = Options(
        method: dioError.requestOptions.method,
        headers: dioError.requestOptions.headers,
      );
      final cloneReq = await dio.request(dioError.requestOptions.path, options: opts, data: dioError.requestOptions.data, queryParameters: dioError.requestOptions.queryParameters);
      handler.resolve(cloneReq);
      return Future.value(true);
    } catch (e) {
      log('the error happened in _retry is $e');
      log('error happened in _retry and then we will logout from the application');
      return Future.value(false);
    }
  }
}
