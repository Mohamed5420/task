import 'package:dartz/dartz.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:task/features/auth/domain/models/user_login_entity.dart';
import 'package:task/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: AuthRepository)
class ImplAuthRepository extends AuthRepository  {
  @override
  Future<Either<Failure, String>> userLogin(UserLoginEntity params) async{
    return await getIt<AuthRemoteDataSource>().userLogin(params);
  }



}