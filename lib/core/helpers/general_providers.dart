import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/bloc/cart_cubit/currency_cubit.dart';
import 'package:task/core/bloc/countries_cubit/countries_cubit.dart';
import 'package:task/core/bloc/device_cubit/device_cubit.dart';
import 'package:task/core/bloc/location_cubit/location_cubit.dart';
import 'package:task/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:task/features/auth/presentation/manager/user_cubit/user_cubit.dart';


class GeneralProviders{

  GeneralProviders._();

  static GeneralProviders instance = GeneralProviders._();

  List<BlocProvider> providers(BuildContext context)=>[
    BlocProvider<AuthCubit>(
      create: (BuildContext context)=> AuthCubit(),
    ),
    BlocProvider<DeviceCubit>(
      create: (BuildContext context)=> DeviceCubit(),
    ),
    BlocProvider<UserCubit>(
      create: (BuildContext context)=> UserCubit(),
    ),
    BlocProvider<LocationCubit>(
      create: (BuildContext context)=> LocationCubit(),
    ),
    BlocProvider<CurrencyCubit>(
      create: (BuildContext context)=> CurrencyCubit(),
    ),
    BlocProvider<CountriesCubit>(
      create: (BuildContext context)=> CountriesCubit(),
    ),
  ];

}