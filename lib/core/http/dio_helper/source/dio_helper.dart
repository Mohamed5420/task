import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/http/dio_helper/utils/auth_interceptor.dart';
import '../../generic_http/api_names.dart';
import '../../models/request_body_model.dart';
import '../utils/cache_manager.dart';
import '../utils/dio_header.dart';

abstract class DioHelper {
  Dio get dio => Dio(BaseOptions(baseUrl: ApiNames.baseUrl, headers: getIt<DioHeader>().call(), connectTimeout: const Duration(minutes: 10), sendTimeout: const Duration(minutes: 10), receiveTimeout: const Duration(minutes: 10)))
    ..interceptors.add(CacheManager()().interceptor)
    // ..interceptors.add(AuthInterceptor())
    //..interceptors.add(ChuckerDioInterceptor())
    ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true, responseHeader: true, logPrint: (data) => log(data.toString())));
  //    ..interceptors.add(PrettyDioLogger(responseBody: true, requestBody: true, responseHeader: true, compact: true, request: true, requestHeader: true, error: true));

  Future<Either<ServerFailure, Response>> call(RequestBodyModel params);
}
