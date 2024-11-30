import 'package:auto_route/auto_route.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/bloc/base_bloc/base_bloc.dart';
import 'package:task/core/bloc/base_bloc/base_state.dart';
import 'package:task/core/constants/CustomButtonAnimation.dart';
import 'package:task/core/constants/country_picker.dart';
import 'package:task/core/helpers/biometric_auth.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_state.dart';
import 'package:task/core/helpers/loading_helper.dart';
import 'package:task/core/routes/router_imports.gr.dart';
import 'package:task/features/auth/domain/models/user_login_entity.dart';
import 'package:task/features/auth/domain/use_case/login_use_case.dart';
import 'package:task/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:task/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:task/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:task/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_darwin/local_auth_darwin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/login_widgets_imports.dart';


part 'login.dart';
part 'login_controller.dart';