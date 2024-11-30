import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/bloc/device_cubit/device_cubit.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/core/helpers/loading_helper.dart';
import 'package:task/core/http/dio_helper/utils/dio_header.dart';
import 'package:injectable/injectable.dart';
import '../../../errors/failures.dart';
import '../../models/request_body_model.dart';
import '../source/dio_helper.dart';
import '../utils/handle_errors.dart';
import '../utils/handle_request_body.dart';

@lazySingleton
class Post extends DioHelper {
  @override
  Future<Either<ServerFailure, Response>> call(RequestBodyModel params) async {
    var context = getIt<GlobalContext>().context();
    // context.read<DeviceCubit>().updateScanLoader(params.isScan == true);
    if (params.showLoader) getIt<LoadingHelper>().showLoadingDialog();
    FormData? formData = getIt<HandleRequestBody>()(params.body);
    try {
      var header = getIt<DioHeader>().call(isMultiPart: params.isMultiPart);
      var response = await dio.post(params.url, data: formData ?? json.encode(params.body), options: Options(headers: params.headers ?? header));
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      return getIt<HandleErrors>().statusError(response, params.errorFunc);
    } on DioError catch (e) {
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      getIt<HandleErrors>().catchError(errorFunc: params.errorFunc, response: e.response);
      return Left(ServerFailure());
    }
  }
}
