import 'dart:async';
import 'dart:ui' as ui;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/bloc/location_cubit/location_cubit.dart';
import 'package:task/core/helpers/utilities.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/features/general/domain/entities/location_entity.dart';
import 'package:task/features/general/presentation/pages/location_address/widgets/LocationWidgetsImports.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'LocationAddress.dart';
part 'LocationAddressData.dart';
