import 'package:dartz/dartz.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/features/auth/domain/models/user_login_entity.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, String>> userLogin(UserLoginEntity params);


}