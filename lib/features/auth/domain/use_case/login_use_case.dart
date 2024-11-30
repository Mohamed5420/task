import 'package:task/core/helpers/di.dart';
import 'package:task/core/usecases/use_case.dart';
import 'package:task/features/auth/domain/models/user_login_entity.dart';
import 'package:task/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase extends UseCase<String, UserLoginEntity> {
  @override
  Future<String> call(UserLoginEntity params) async {
    var result = await getIt<AuthRepository>().userLogin(params);
    return result.fold((l) => '', (r) => r);
  }
}
