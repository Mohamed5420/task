import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/bloc/base_bloc/base_bloc.dart';
import 'package:task/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:task/core/bloc/countries_cubit/countries_cubit.dart';
import 'package:task/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/utilities.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/usecases/use_case.dart';
import 'package:task/core/widgets/default_app_bar.dart';
import 'package:task/features/base/domain/entities/currency_entity.dart';
import 'package:task/features/base/domain/use_case/get_countries_use_case.dart';
import 'package:task/features/base/presentation/pages/home/taps/convert_screen/widgets/convert_screen_widgets_imports.dart';

part 'convert_screen.dart';
part 'convert_screen_controller.dart';