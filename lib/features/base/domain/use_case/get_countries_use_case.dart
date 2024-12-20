import 'package:task/core/helpers/di.dart';
import 'package:task/core/usecases/use_case.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/domain/repositories/base_repository.dart';

class GetCountriesUseCase extends UseCase<List<CountryModel>?, bool> {
  @override
  Future<List<CountryModel>?> call(bool params) async {
    var result = await getIt<BaseRepository>().getCountries(params);
    return result.fold((l) => null, (r) => r);
  }
}
