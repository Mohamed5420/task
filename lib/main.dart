import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:task/core/bloc/device_cubit/device_cubit.dart';
import 'package:task/core/helpers/global_notification.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/helpers/di.dart';
import 'core/routes/router_imports.dart';
import 'my_app.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton(SharedPreferences.getInstance());
  getIt.registerSingleton(AppRouter());
  await configureDependencies();
  // getIt<GlobalNotification>().setupNotification();
  runApp(
    BlocProvider(
      create: (BuildContext context) => DeviceCubit(),
      child: Phoenix(child: const MyApp()),
    ),
  );
}

