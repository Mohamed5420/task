part of 'countries_cubit.dart';

abstract class CountryState extends Equatable {
  final List<CountryModel>? list;
  final bool? changed;
  const CountryState({ this.list, this.changed});
}

class CountryInitial extends CountryState {
  CountryInitial() : super(list: [],changed: false);

  @override
  List<Object?> get props => [list,changed];
}

class CountryUpdated extends CountryState {
  const CountryUpdated(List<CountryModel>? list,bool? changed) : super(list: list,changed: changed);
  @override
  List<Object?> get props => [list,changed];
}
