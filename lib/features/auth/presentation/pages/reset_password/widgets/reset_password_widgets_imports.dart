import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:task/core/routes/router_imports.gr.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/GenericTextField.dart';
import 'package:task/core/widgets/LoadingButton.dart';

import 'package:task/features/auth/presentation/pages/reset_password/reset_password_imports.dart';
import 'package:task/core/helpers/validator.dart';


part 'reset_password_form.dart';
part 'reset_password_button.dart';
part 'build_resend_code.dart';