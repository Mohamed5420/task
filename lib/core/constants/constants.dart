import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Constants{
  static const String kwdCurrency = 'KWD';
  static const String usdCurrency = 'USD';
  static const String currenciesBox = 'currency_box';
  static const String countriesBox = 'countries_box';
  static const Duration openContainerDuration = Duration(milliseconds: 700);
  static Border cardBorder = Border.all(color: AppColors.noContextInstance.greyWhite);
  static PaintingEffect? shimmerEffect = ShimmerEffect(
    baseColor: Colors.grey[300]??Colors.grey,
    highlightColor: Colors.grey[100]??Colors.grey,
    duration: const Duration(seconds:1),
  );
  static BoxDecoration gradiantDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0, 0.25],
      colors: [
        const Color(0xFF20BF55).withOpacity(0.3),
        const Color(0xFF20BF55).withOpacity(0.05),
      ],
    ),
  );
}