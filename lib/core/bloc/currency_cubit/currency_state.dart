part of 'currency_cubit.dart';

abstract class CurrencyState extends Equatable {
  final List<CurrencyModel>? model;
  final bool? changed;
  const CurrencyState({ this.model, this.changed});
}

class CurrencyInitial extends CurrencyState {
  CurrencyInitial() : super(model: [],changed: false);

  @override
  List<Object?> get props => [model,changed];
}

class CurrencyUpdated extends CurrencyState {
  const CurrencyUpdated(List<CurrencyModel>? model,bool? changed) : super(model: model,changed: changed);
  @override
  List<Object?> get props => [model,changed];
}
