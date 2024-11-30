import 'package:dartz/dartz.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/http/generic_http/api_names.dart';
import 'package:task/core/http/generic_http/generic_http.dart';
import 'package:task/core/http/models/http_request_model.dart';
import 'package:task/features/auth/domain/models/user_login_entity.dart';
import 'package:injectable/injectable.dart';

import 'auth_remote_data_source.dart';

@Injectable(as: AuthRemoteDataSource)
class ImplAuthRemoteDataSource extends AuthRemoteDataSource {
  @override
  Future<Either<Failure, String>> userLogin(UserLoginEntity params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.login,
        requestMethod: RequestMethod.post,
        requestBody: params.toJson(),
        responseKey: (data) => data["data"]['accessToken'],
        responseType: ResType.model,
        errorFunc: (error) => error["message"],
        toJsonFunc: (json) => json,
        showLoader: false,
        );
    var data = GenericHttpImpl<String>()(model);
    return data;
  }

}