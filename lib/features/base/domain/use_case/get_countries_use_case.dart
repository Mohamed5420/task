import 'package:task/core/helpers/di.dart';
import 'package:task/core/usecases/use_case.dart';
import 'package:task/features/base/domain/entities/currency_entity.dart';
import 'package:task/features/base/domain/repositories/base_repository.dart';

class GetCountriesUseCase extends UseCase<List<CountryEntity>?, bool> {
  @override
  Future<List<CountryEntity>?> call(bool params) async {
    var result = await getIt<BaseRepository>().getCountries(params);
    return result.fold((l) => null, (r) => r);
  }
}
