import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/bloc/device_cubit/device_cubit.dart';
import 'package:task/core/constants/app_config.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/core/helpers/global_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioHeader {
  Map<String, String> call({bool isMultiPart = false}) {
    var context = getIt<GlobalContext>().context();
    var language = context.read<DeviceCubit>().state.model.locale.languageCode;
    String? accessToken = GlobalState.instance.get("accessToken");
    String? deviceId = GlobalState.instance.get("deviceId");
    String? apiKey = AppConfig.instance.baseUrl;
    // String? jwt = getIt<EncryptApiKey>().createJWT();

    var data = {
      'Content-Type': isMultiPart ? "multipart/form-data" : "application/json",
      'Accept': 'application/json',
      'x-api-key': apiKey,
      'deviceid': '$deviceId',
      'X-LANGUAGE': language,
    };
    if (accessToken != null) {
      data.addAll({'Authorization': 'Bearer $accessToken'});
    }
    return data;
  }
}
