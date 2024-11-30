// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;
import 'package:task/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i2;
import 'package:task/features/auth/presentation/pages/change_password/change_password_imports.dart'
    as _i3;
import 'package:task/features/auth/presentation/pages/create_business_account/create_business_account_imports.dart'
    as _i5;
import 'package:task/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i6;
import 'package:task/features/auth/presentation/pages/login/login_imports.dart'
    as _i9;
import 'package:task/features/auth/presentation/pages/register/register_imports.dart'
    as _i11;
import 'package:task/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i12;
import 'package:task/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i15;
import 'package:task/features/auth/presentation/pages/verify_code/verify_code_imports.dart'
    as _i17;
import 'package:task/features/auth/presentation/pages/welcome_screen/welcome_screen_imports.dart'
    as _i18;
import 'package:task/features/base/presentation/pages/home/home_imports.dart'
    as _i7;
import 'package:task/features/base/presentation/pages/setting/setting_imports.dart'
    as _i13;
import 'package:task/features/general/presentation/pages/about/about_imports.dart'
    as _i1;
import 'package:task/features/general/presentation/pages/contact_us/contact_us_imports.dart'
    as _i4;
import 'package:task/features/general/presentation/pages/location_address/LocationAddressImports.dart'
    as _i8;
import 'package:task/features/general/presentation/pages/privacy/privacy_imports.dart'
    as _i10;
import 'package:task/features/general/presentation/pages/security_tips/security_tips_imports.dart'
    as _i14;
import 'package:task/features/general/presentation/pages/terms/terms_imports.dart'
    as _i16;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    About.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.About(),
      );
    },
    ActiveAccount.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ActiveAccount(),
      );
    },
    ChangePassword.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChangePassword(),
      );
    },
    ContactUs.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ContactUs(),
      );
    },
    CreateBusinessAccount.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CreateBusinessAccount(),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgetPassword(),
      );
    },
    Home.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Home(),
      );
    },
    LocationAddress.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LocationAddress(),
      );
    },
    Login.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Login(),
      );
    },
    Privacy.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Privacy(),
      );
    },
    Register.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.Register(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ResetPassword(),
      );
    },
    SecuritySetting.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SecuritySetting(),
      );
    },
    SecurityTips.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SecurityTips(),
      );
    },
    Splash.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Splash(),
      );
    },
    Terms.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.Terms(),
      );
    },
    VerifyCode.name: (routeData) {
      final args = routeData.argsAs<VerifyCodeArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.VerifyCode(
          key: args.key,
          phone: args.phone,
          isRegister: args.isRegister,
          verifyToken: args.verifyToken,
        ),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.About]
class About extends _i19.PageRouteInfo<void> {
  const About({List<_i19.PageRouteInfo>? children})
      : super(
          About.name,
          initialChildren: children,
        );

  static const String name = 'About';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ActiveAccount]
class ActiveAccount extends _i19.PageRouteInfo<void> {
  const ActiveAccount({List<_i19.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChangePassword]
class ChangePassword extends _i19.PageRouteInfo<void> {
  const ChangePassword({List<_i19.PageRouteInfo>? children})
      : super(
          ChangePassword.name,
          initialChildren: children,
        );

  static const String name = 'ChangePassword';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ContactUs]
class ContactUs extends _i19.PageRouteInfo<void> {
  const ContactUs({List<_i19.PageRouteInfo>? children})
      : super(
          ContactUs.name,
          initialChildren: children,
        );

  static const String name = 'ContactUs';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CreateBusinessAccount]
class CreateBusinessAccount extends _i19.PageRouteInfo<void> {
  const CreateBusinessAccount({List<_i19.PageRouteInfo>? children})
      : super(
          CreateBusinessAccount.name,
          initialChildren: children,
        );

  static const String name = 'CreateBusinessAccount';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgetPassword]
class ForgetPassword extends _i19.PageRouteInfo<void> {
  const ForgetPassword({List<_i19.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Home]
class Home extends _i19.PageRouteInfo<void> {
  const Home({List<_i19.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LocationAddress]
class LocationAddress extends _i19.PageRouteInfo<void> {
  const LocationAddress({List<_i19.PageRouteInfo>? children})
      : super(
          LocationAddress.name,
          initialChildren: children,
        );

  static const String name = 'LocationAddress';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Login]
class Login extends _i19.PageRouteInfo<void> {
  const Login({List<_i19.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Privacy]
class Privacy extends _i19.PageRouteInfo<void> {
  const Privacy({List<_i19.PageRouteInfo>? children})
      : super(
          Privacy.name,
          initialChildren: children,
        );

  static const String name = 'Privacy';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.Register]
class Register extends _i19.PageRouteInfo<void> {
  const Register({List<_i19.PageRouteInfo>? children})
      : super(
          Register.name,
          initialChildren: children,
        );

  static const String name = 'Register';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ResetPassword]
class ResetPassword extends _i19.PageRouteInfo<void> {
  const ResetPassword({List<_i19.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SecuritySetting]
class SecuritySetting extends _i19.PageRouteInfo<void> {
  const SecuritySetting({List<_i19.PageRouteInfo>? children})
      : super(
          SecuritySetting.name,
          initialChildren: children,
        );

  static const String name = 'SecuritySetting';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SecurityTips]
class SecurityTips extends _i19.PageRouteInfo<void> {
  const SecurityTips({List<_i19.PageRouteInfo>? children})
      : super(
          SecurityTips.name,
          initialChildren: children,
        );

  static const String name = 'SecurityTips';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i15.Splash]
class Splash extends _i19.PageRouteInfo<void> {
  const Splash({List<_i19.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Terms]
class Terms extends _i19.PageRouteInfo<void> {
  const Terms({List<_i19.PageRouteInfo>? children})
      : super(
          Terms.name,
          initialChildren: children,
        );

  static const String name = 'Terms';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.VerifyCode]
class VerifyCode extends _i19.PageRouteInfo<VerifyCodeArgs> {
  VerifyCode({
    _i20.Key? key,
    required String phone,
    required bool isRegister,
    String verifyToken = "",
    List<_i19.PageRouteInfo>? children,
  }) : super(
          VerifyCode.name,
          args: VerifyCodeArgs(
            key: key,
            phone: phone,
            isRegister: isRegister,
            verifyToken: verifyToken,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyCode';

  static const _i19.PageInfo<VerifyCodeArgs> page =
      _i19.PageInfo<VerifyCodeArgs>(name);
}

class VerifyCodeArgs {
  const VerifyCodeArgs({
    this.key,
    required this.phone,
    required this.isRegister,
    this.verifyToken = "",
  });

  final _i20.Key? key;

  final String phone;

  final bool isRegister;

  final String verifyToken;

  @override
  String toString() {
    return 'VerifyCodeArgs{key: $key, phone: $phone, isRegister: $isRegister, verifyToken: $verifyToken}';
  }
}

/// generated route for
/// [_i18.WelcomePage]
class WelcomeRoute extends _i19.PageRouteInfo<void> {
  const WelcomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
