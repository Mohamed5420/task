import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:tf_dio_cache/tf_dio_cache.dart';

import '../../generic_http/api_names.dart';

class CacheManager {
  DioCacheManager call() {
    var context = getIt<GlobalContext>().context();
    var userID = context.read<UserCubit>().state.model?.id;
    return DioCacheManager(
      CacheConfig(baseUrl: "${ApiNames.baseUrl}#$userID", defaultRequestMethod: "POST"),
    );
  }
}
