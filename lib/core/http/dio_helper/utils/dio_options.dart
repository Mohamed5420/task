import 'package:dio/dio.dart';
import 'package:task/core/http/dio_helper/utils/dio_header.dart';
import 'package:injectable/injectable.dart';
import 'package:tf_dio_cache/tf_dio_cache.dart';

import '../../../helpers/di.dart';

@lazySingleton
class DioOptions {
  Options call({bool forceRefresh = true}) {
    var header = getIt<DioHeader>().call();
    return buildCacheOptions(
      const Duration(hours: 3),
      maxStale: const Duration(days: 7),
      forceRefresh: forceRefresh,
      options: Options(extra: {}, headers: header),
    );
  }
}
