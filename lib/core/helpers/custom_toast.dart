import 'package:auto_route/auto_route.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/bloc/device_cubit/device_cubit.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/helpers/custom_attached_animation.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/core/models/device_model/device_model.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/default_button.dart';
import 'package:task/res.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

enum ToastType { success, error, info }

class CustomToast {
  static Map<ToastType, Color> toastBgColors = {
    ToastType.success: AppColors.noContextInstance.primary,
    ToastType.error: AppColors.noContextInstance.red,
    ToastType.info: AppColors.noContextInstance.secondary,
  };

  static Map<ToastType, Color> toastTextColors = {
    ToastType.success: AppColors.noContextInstance.white,
    ToastType.error: AppColors.noContextInstance.white,
    ToastType.info: AppColors.noContextInstance.white,
  };

  static var toastCancel;

  static void showSnakeBar(String msg, {ToastType type = ToastType.error}) {
    BuildContext context = getIt<GlobalContext>().context();
    var device = context.read<DeviceCubit>().state.model;
    _setVibrate(type);
    toastCancel = BotToast.showAttachedWidget(
      attachedBuilder: (_) => _toastWidget(context, msg, type, device),
      duration: const Duration(seconds: 5),
      target: Offset(device.isTablet ? 180 : 520, device.isTablet ? 180 : 520),
      animationDuration: const Duration(milliseconds: 200),
      wrapToastAnimation: (controller, cancel, Widget child) => CustomAttachedAnimation(controller: controller, child: child),
    );
  }

  static void showSimpleToast({required String msg, ToastType type = ToastType.error}) {
    showSnakeBar(msg, type: type);
  }

  static void _setVibrate(ToastType type) {
    switch (type) {
      case ToastType.error:
        Vibrate.feedback(FeedbackType.error);
        break;
      case ToastType.success:
        Vibrate.feedback(FeedbackType.success);
        break;
      case ToastType.info:
        Vibrate.feedback(FeedbackType.warning);
        break;
    }
  }

  static void _setIcon(ToastType type) {
    switch (type) {
      case ToastType.error:
        const Icon(Icons.error);
        break;
      case ToastType.success:
        const Icon(Icons.check);
        break;
      case ToastType.info:
        const Icon(Icons.warning);
        break;
    }
  }

  static Widget _toastWidget(BuildContext context, String msg, ToastType type, DeviceModel device) {
    return BlurryContainer(
      blur: 5,
      elevation: 0,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 13.0.w, vertical: 15.h),
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 8.h),
        decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(8.r), bottom: Radius.circular(8.r)), color: toastBgColors[type]!),
        child: Row(
          textDirection: device.locale == const Locale('en', 'US') ? TextDirection.rtl : TextDirection.ltr,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                msg,
                style: AppTextStyle.s12_w600(color: context.colors.white),
              ),
            ),
            SizedBox(width: 10.w),
            GestureDetector(
              onTap: () => toastCancel(),
              child: CircleAvatar(
                backgroundColor: toastTextColors[type],
                radius: 10.r,
                child: Icon(
                  Icons.close,
                  size: 16.w,
                  color: context.colors.blackOpacity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  static Future genericDialog({required String title, required String content, Widget? styledContent, required String btnName, String? otherBtnName, required String icon, required Function() onConfirm, bool? hasCancel = true, Function()? noOptionTap, bool? noOption = false}) {
    BuildContext context = getIt<GlobalContext>().context();
    return showCupertinoDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          scrollable: true,
          alignment: Alignment.center,
          titlePadding: EdgeInsets.zero,
          backgroundColor: context.colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
          insetPadding: EdgeInsets.symmetric(horizontal: 15.w),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(right: 15.w, left: 15.w, top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(visible: hasCancel == true, child: InkWell(onTap: () => AutoRouter.of(context).pop(), child: SvgPicture.asset(Res.close))),
                    Column(
                      children: [
                        Container(padding: EdgeInsets.all(7.h), decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: context.colors.greyWhite)), child: SvgPicture.asset(icon)),
                        Gaps.vGap15,
                        Text(title, style: AppTextStyle.s16_w700(color: context.colors.black)),
                      ],
                    ),
                    SizedBox(width: 20.w)
                  ],
                ),
              ),
            ],
          ),
          content: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                styledContent ??
                    Text(
                      content,
                      style: AppTextStyle.s13_w500(color: context.colors.greyWhite, height: 1.3),
                      textAlign: TextAlign.center,
                    ),
                DefaultButton(title: btnName, onTap: onConfirm, color: context.colors.primary, textColor: context.colors.white, margin: EdgeInsets.only(top: 20.h), borderRadius: BorderRadius.circular(8.r), fontSize: 13.sp, fontWeight: FontWeight.w700, height: 35.h),
                if (noOption == true) Gaps.vGap15,
                // if (noOption == true) InlineButton(title: otherBtnName ?? ("no"), onTap: noOptionTap ?? () {})
              ],
            ),
          ),
        );
      },
    );
  }

  static Future viewDataDialog({required String title, required Widget content, bool? hasCancel = true}) {
    BuildContext context = getIt<GlobalContext>().context();
    return showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            alignment: Alignment.center,
            titlePadding: EdgeInsets.zero,
            backgroundColor: context.colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
            contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
            insetPadding: EdgeInsets.symmetric(horizontal: 15.w),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15.w, left: 15.w, top: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: hasCancel == true,
                        child: InkWell(onTap: () => AutoRouter.of(context).pop(), child: SvgPicture.asset(Res.close)),
                      ),
                      Text(title, style: AppTextStyle.s16_w700(color: context.colors.black)),
                      SizedBox(width: 20.w)
                    ],
                  ),
                ),
              ],
            ),
            content: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  content,
                  DefaultButton(title: "Ok", onTap: () => AutoRouter.of(context).pop(), color: context.colors.primary, textColor: context.colors.white, margin: EdgeInsets.only(top: 20.h), borderRadius: BorderRadius.circular(8.r), fontSize: 13.sp, fontWeight: FontWeight.w700, height: 35.h),
                ],
              ),
            ),
          );
          },
        );
    }
}