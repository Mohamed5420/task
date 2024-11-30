import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../errors/failures.dart';

@lazySingleton
class HandleErrors {
  void catchError({Response? response, required Function(dynamic) errorFunc}) {
    if (response == null || response.data == null) {
      log("failed response Check Server");
      // CustomToast.showSimpleToast(msg: tr("something_went_wrong"));
    } else {
      log("failed response ${response.statusCode}");
      log("failed response ${response.data}");
      var data = response.data;
      try {
        if (data is String) data = json.decode(response.data);
        String message = "";
        message = data["message"].toString();
        switch (response.statusCode) {
          case 503:
            // CustomToast.showSimpleToast(msg: tr("something_went_wrong"));
            break;
          case 500:
            // CustomToast.showSimpleToast(msg: tr("something_went_wrong"));
            break;
          case 502:
            // CustomToast.showSimpleToast(msg: tr("something_went_wrong"));
            break;
          case 422:
            // CustomToast.showSnakeBar(tr(message.toString()));
            break;
          case 403:
            // CustomToast.showSnakeBar(tr(message.toString()));
            break;
          case 400:
            if (data["message"] is List) {
              List<String> errors = List<String>.from(data["message"].map((e) => e));
              for (var e in errors) {
                // CustomToast.showSnakeBar(tr(e.toString()));
                return;
              }
            } else {
              // CustomToast.showSnakeBar(tr(message.toString()));
            }
            break;
          // case 401:
          //   CustomToast.showSnakeBar(message.toString());
          //   break;
          case 404:
            // CustomToast.showSnakeBar(message);
            if (message == "Not Authorized") {
              _tokenExpired();
            }
            break;
          case 301:
          case 302:
            _tokenExpired();
            break;
        }
      } catch (e) {
        // CustomToast.showSnakeBar(tr(e.toString()));
      }
    }
  }

  Either<ServerFailure, Response> statusError(Response response, Function(dynamic) errorFunc) {
    if (response.statusCode! >= 200 && response.statusCode! <= 205) {
      return Right(response);
    }
    if (response.data["message"] != null) {
      // CustomToast.showSnakeBar(tr(response.data["message"].toString()));
    }
    return Left(ServerFailure());
  }

  void _tokenExpired() async {
    // var context = getIt<GlobalContext>().context();
    // getIt<LocalStorage>().deleteAllItems();
    // context.read<DeviceCubit>().updateUserLogged(false);
    // Phoenix.rebirth(context);
  }
}
