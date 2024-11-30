import 'dart:io';

import 'package:task/core/bloc/base_bloc/base_bloc.dart';
import 'package:task/core/bloc/location_cubit/location_cubit.dart';
import 'package:task/core/constants/CustomButtonAnimation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/presentation/pages/register/widgets/register_widgets_imports.dart';
import 'package:task/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:task/features/auth/presentation/widgets/build_auth_title.dart';
import 'package:task/features/general/domain/entities/location_entity.dart';
import 'package:geolocator/geolocator.dart';

part 'register.dart';
part 'register_data.dart';