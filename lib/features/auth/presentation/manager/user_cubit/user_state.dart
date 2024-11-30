part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  final UserDomainModel? model;
  final bool changed;
  const UserState({this.model,required this.changed});}

class UserInitial extends UserState {
  const UserInitial() : super(changed: false);
  @override
  List<Object> get props => [changed];
}

class UserUpdateState extends UserState {
  const UserUpdateState({required UserDomainModel? model,required bool changed})
      : super(model: model,changed: changed);
  @override
  List<Object> get props => [changed];
}