import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/features/auth/domain/models/user_domain_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitial());


}
