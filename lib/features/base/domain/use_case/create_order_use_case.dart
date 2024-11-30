// import 'package:task/core/helpers/di.dart';
// import 'package:task/core/usecases/use_case.dart';
// import 'package:task/features/base/domain/entities/create_order_entity/create_order_entity.dart';
// import 'package:task/features/base/domain/repositories/base_repository.dart';
//
// class CreateOrderUseCase extends UseCase<bool, CreateOrderEntity> {
//   @override
//   Future<bool> call(CreateOrderEntity params) async {
//     var result = await getIt<BaseRepository>().createOrder(params);
//     return result.fold((l) => false, (r) => r);
//   }
// }
