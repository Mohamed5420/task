// import 'package:task/core/helpers/di.dart';
// import 'package:task/core/requester/requester.dart';
// import 'package:task/features/auth/domain/models/user_domain_model.dart';
// import 'package:task/features/base/domain/repositories/auth_repository.dart';
//
// class ProfileRequester extends Requester<UserDomainModel> {
//   final int userId;
//
//   ProfileRequester({required this.userId});
//   @override
//   Future<void> request({bool fromRemote = true}) async {
//     if (hasNoData) {
//       loadingState();
//     }
//     var result = await getIt.get<BaseRepository>().getUser(fromRemote);
//     result.when(
//       isSuccess: (data) {
//         successState(data!);
//       },
//       isError: (error) {
//         failedState(error, () => request(fromRemote: fromRemote));
//       },
//     );
//   }
//
//
//
//
// }
