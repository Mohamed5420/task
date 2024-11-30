import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/loading_helper.dart';
import 'package:task/core/http/dio_helper/utils/dio_header.dart';
import 'package:injectable/injectable.dart';
import '../../../errors/failures.dart';
import '../../models/request_body_model.dart';
import '../source/dio_helper.dart';
import '../utils/handle_errors.dart';

@lazySingleton
class Patch extends DioHelper {
  @override
  Future<Either<ServerFailure, Response>> call(RequestBodyModel params) async {
    if (params.showLoader) getIt<LoadingHelper>().showLoadingDialog();
    try {
      var header = getIt<DioHeader>().call(isMultiPart: params.isMultiPart);
      var response = await dio.patch(params.url,
          data: params.body, options: Options(headers: header));
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      return getIt<HandleErrors>().statusError(response, params.errorFunc);
    } on DioError catch (e) {
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      getIt<HandleErrors>()
          .catchError(errorFunc: params.errorFunc, response: e.response);
      return Left(ServerFailure());
    }
  }
}
