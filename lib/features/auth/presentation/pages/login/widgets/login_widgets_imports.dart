import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/helpers/custom_toast.dart';

import 'package:task/core/helpers/validator.dart';
import 'package:task/core/routes/router_imports.gr.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/GenericTextField.dart';
import 'package:task/core/widgets/LoadingButton.dart';
import 'package:task/core/widgets/common_card.dart';
import 'package:task/core/widgets/default_button.dart';
import 'package:task/features/auth/presentation/widgets/build_auth_title.dart';
import 'package:task/res.dart';
import '../login_imports.dart';


part 'unlogged_view/build_login_form.dart';
part 'unlogged_view/build_login_button.dart';
part 'unlogged_view/unlogged_view.dart';
part 'unlogged_view/build_forget_password_view.dart';
part 'unlogged_view/build_login_social_media.dart';
part 'unlogged_view/build_social_item.dart';
part 'unlogged_view/dont_have_account.dart';
part 'logged_view/build_biometric_buttons.dart';
part 'logged_view/logged_view.dart';
part 'logged_view/build_welcome_back_text.dart';
part 'logged_view/build_or_divider.dart';
part 'logged_view/build_not_you.dart';
part 'logged_view/use_password_button.dart';
part 'not_you_view/not_you_view.dart';
part 'not_you_view/not_you_view_inputs.dart';