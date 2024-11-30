import 'package:task/core/helpers/di.dart';
import 'package:task/core/usecases/use_case.dart';
import 'package:task/features/base/data/models/exchange_rates_model.dart';
import 'package:task/features/base/domain/entities/exchange_rates_entity.dart';
import 'package:task/features/base/domain/repositories/base_repository.dart';

class GetHistoricalDataUseCase extends UseCase<CurrencyRatesModel?, GetHistoricalDataParams> {
  @override
  Future<CurrencyRatesModel?> call(GetHistoricalDataParams params) async {
    var result = await getIt<BaseRepository>().getHistoricalData(params);
    return result.fold((l) => null, (r) => r);
  }
}

class GetHistoricalDataParams{
  final String fromCountry;
  final String toCountry;


  GetHistoricalDataParams({required this.fromCountry, required this.toCountry});
}
