// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:task/core/helpers/currency_conversion.dart' as _i8;
import 'package:task/core/helpers/file_service.dart' as _i3;
import 'package:task/core/helpers/firebase_analytics_helper.dart' as _i9;
import 'package:task/core/helpers/global_context.dart' as _i10;
import 'package:task/core/helpers/global_notification.dart' as _i11;
import 'package:task/core/helpers/loading_helper.dart' as _i7;
import 'package:task/core/helpers/location_service.dart' as _i4;
import 'package:task/core/helpers/psermission_services.dart' as _i5;
import 'package:task/core/helpers/rate_app.dart' as _i12;
import 'package:task/core/helpers/share_services.dart' as _i6;
import 'package:task/core/helpers/utilities.dart' as _i13;
import 'package:task/core/http/dio_helper/actions/delete.dart' as _i14;
import 'package:task/core/http/dio_helper/actions/get.dart' as _i15;
import 'package:task/core/http/dio_helper/actions/patch.dart' as _i16;
import 'package:task/core/http/dio_helper/actions/post.dart' as _i17;
import 'package:task/core/http/dio_helper/actions/put.dart' as _i18;
import 'package:task/core/http/dio_helper/utils/dio_header.dart' as _i19;
import 'package:task/core/http/dio_helper/utils/dio_options.dart' as _i20;
import 'package:task/core/http/dio_helper/utils/handle_errors.dart' as _i21;
import 'package:task/core/http/dio_helper/utils/handle_json_response.dart'
    as _i22;
import 'package:task/core/http/dio_helper/utils/handle_request_body.dart'
    as _i23;
import 'package:task/core/http/generic_http/generic_http.dart' as _i24;
import 'package:task/core/network/network_info.dart' as _i25;
import 'package:task/core/requester/requester.dart' as _i26;
import 'package:task/core/storage/local_storage.dart' as _i27;
import 'package:task/features/auth/data/data_sources/auth_remote_data_source.dart'
    as _i32;
import 'package:task/features/auth/data/data_sources/impl_auth_remote_data_source.dart'
    as _i33;
import 'package:task/features/auth/data/repositories/impl_auth_repository.dart'
    as _i29;
import 'package:task/features/auth/domain/repositories/auth_repository.dart'
    as _i28;
import 'package:task/features/base/data/data_sources/home_remote_data_source.dart'
    as _i30;
import 'package:task/features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i31;
import 'package:task/features/base/data/repositories/impl_base_repository.dart'
    as _i35;
import 'package:task/features/base/domain/repositories/base_repository.dart'
    as _i34;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppFileService>(() => _i3.AppFileService());
    gh.factory<_i4.LocationService>(() => _i4.LocationService());
    gh.factory<_i5.PermissionServices>(() => _i5.PermissionServices());
    gh.factory<_i6.ShareServices>(() => _i6.ShareServices());
    gh.singleton<_i7.LoadingHelper>(() => _i7.LoadingHelper());
    gh.lazySingleton<_i8.CurrencyConversion>(() => _i8.CurrencyConversion());
    gh.lazySingleton<_i9.FirebaseAnalyticsHelper>(
        () => _i9.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i10.GlobalContext>(() => _i10.GlobalContext());
    gh.lazySingleton<_i11.GlobalNotification>(() => _i11.GlobalNotification());
    gh.lazySingleton<_i12.RateAppHelper>(() => _i12.RateAppHelper());
    gh.lazySingleton<_i13.Utilities>(() => _i13.Utilities());
    gh.lazySingleton<_i14.Delete>(() => _i14.Delete());
    gh.lazySingleton<_i15.Get>(() => _i15.Get());
    gh.lazySingleton<_i16.Patch>(() => _i16.Patch());
    gh.lazySingleton<_i17.Post>(() => _i17.Post());
    gh.lazySingleton<_i18.Put>(() => _i18.Put());
    gh.lazySingleton<_i19.DioHeader>(() => _i19.DioHeader());
    gh.lazySingleton<_i20.DioOptions>(() => _i20.DioOptions());
    gh.lazySingleton<_i21.HandleErrors>(() => _i21.HandleErrors());
    gh.lazySingleton<_i22.HandleJsonResponse<dynamic>>(
        () => _i22.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i23.HandleRequestBody>(() => _i23.HandleRequestBody());
    gh.lazySingleton<_i24.GenericHttpImpl<dynamic>>(
        () => _i24.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i25.NetworkInfoImpl>(() => _i25.NetworkInfoImpl());
    gh.lazySingleton<_i26.GenericHttpImpl<dynamic>>(
        () => _i26.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i27.LocalStorage>(() => _i27.LocalStorage());
    gh.factory<_i28.AuthRepository>(() => _i29.ImplAuthRepository());
    gh.factory<_i30.HomeRemoteDataSource>(
        () => _i31.ImplHomeRemoteDataSource());
    gh.factory<_i32.AuthRemoteDataSource>(
        () => _i33.ImplAuthRemoteDataSource());
    gh.factory<_i34.BaseRepository>(() => _i35.ImplBaseRepository());
    return this;
  }
}
