import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/bloc/device_cubit/device_cubit.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/core/routes/router_imports.gr.dart';
import 'package:task/core/storage/local_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

@lazySingleton
class BiometricAuth {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> canAuthenticate() async {
    var context = getIt<GlobalContext>().context();
    var logged = context.read<DeviceCubit>().state.model.logged;
    bool? userHasBiometric = (await getIt<LocalStorage>().getItem("hasBiometric") == "1");
    final List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    bool deviceCheck = (canAuthenticateWithBiometrics || await auth.isDeviceSupported() || availableBiometrics.isNotEmpty);
    return (deviceCheck && (userHasBiometric == true || logged == true));
  }

  Future<void> authenticate(BuildContext context, Function() function, {bool fromBackGround = false}) async {
    try {
      final bool didAuthenticate = await auth.authenticate(localizedReason: 'Authenticate account', options: const AuthenticationOptions(useErrorDialogs: false, stickyAuth: true));
      if (didAuthenticate == true) {
        Function.apply(function, []);
      } else {
        if (fromBackGround && context.mounted) {
          AutoRouter.of(context).push(const Login());
        }
      }
    } on PlatformException catch (e) {
      if (e.code == auth_error.notEnrolled) {
      } else if (e.code == auth_error.lockedOut || e.code == auth_error.permanentlyLockedOut) {}
    }
  }

  Future<bool> isFaceBiometric() async {
    final List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
    return (availableBiometrics.contains(BiometricType.face)||availableBiometrics.contains(BiometricType.strong));
  }

  Future<bool> isFingerBiometric() async {
    final List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
    return (availableBiometrics.contains(BiometricType.fingerprint)||availableBiometrics.contains(BiometricType.weak));
    }
}