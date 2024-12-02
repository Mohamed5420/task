import 'package:task/core/helpers/di.dart';
import 'package:task/core/models/currency_model/currency_model.dart';
import 'package:task/core/usecases/use_case.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/domain/repositories/base_repository.dart';

class GetCurrenciesUseCase extends UseCase<List<CurrencyModel>?, bool> {
  @override
  Future<List<CurrencyModel>?> call(bool params) async {
    var result = await getIt<BaseRepository>().getCurrencies();
    return result.fold((l) => null, (r) => r);
  }
}
