import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/http/dio_helper/actions/delete.dart';
import 'package:task/core/http/dio_helper/actions/get.dart';
import 'package:task/core/http/dio_helper/actions/patch.dart';
import 'package:task/core/http/dio_helper/actions/post.dart';
import 'package:task/core/http/dio_helper/actions/put.dart';
import 'package:task/core/http/dio_helper/utils/handle_json_response.dart';
import 'package:task/core/http/models/http_request_model.dart';
import 'package:task/core/http/models/request_body_model.dart';
import 'package:task/core/network/network_info.dart';
import 'package:injectable/injectable.dart';

abstract class GenericHttp<T> {
  Future<Either<Failure, T>> call(HttpRequestModel model);
}

@lazySingleton
class GenericHttpImpl<T> extends GenericHttp<T> {

  @preResolve
  @override
  Future<Either<Failure, T>> call(HttpRequestModel model) async {
    RequestBodyModel params = RequestBodyModel(
      url: model.url,
      showLoader: model.showLoader ?? false,
      forceRefresh: model.refresh,
      errorFunc: model.errorFunc ?? (data) => data,
      body: model.requestBody ?? {},
      // isMultipart: model.isMultipart
    );
    final connected = await getIt<NetworkInfoImpl>().isConnected;
    if (!connected) {
      return Left(NetWorkFailure());
    }
    Either<ServerFailure, Response> response;
    switch (model.requestMethod) {
      case RequestMethod.get:
        response = await getIt<Get>()(params);
        break;
      case RequestMethod.post:
        response = await getIt<Post>()(params);
        break;
      case RequestMethod.delete:
        response = await getIt<Delete>()(params);
        break;
      case RequestMethod.put:
        response = await getIt<Put>()(params);
        break;
      case RequestMethod.patch:
        response = await getIt<Patch>()(params);
        break;
    }
    var customType = HandleJsonResponse<T>()(
      response,
      model.responseType,
      model.toJsonFunc ?? (val) {},
      model.responseKey,
    );
    return customType;
  }


}