import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:task/core/bloc/base_bloc/base_bloc.dart';
import 'package:task/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/widgets/default_app_bar.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/data/models/exchange_rates_model.dart';
import 'package:task/features/base/domain/use_case/get_historical_data_use_case.dart';
import 'package:task/features/base/presentation/pages/home/taps/convert_screen/widgets/convert_screen_widgets_imports.dart';
import 'package:task/features/base/presentation/pages/home/taps/historical_date/widgets/historical_data_widgets_imports.dart';

part 'historical_data.dart';
part 'historical_data_controller.dart';