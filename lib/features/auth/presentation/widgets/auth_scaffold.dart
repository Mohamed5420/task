import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/back_button.dart';
import 'package:task/features/auth/presentation/widgets/build_header_logo.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({super.key, this.showBack=true,this.scrollable=true, this.title, this.textStyle, required this.children, this.showHeader=true, this.header, this.footer});
  final bool? showBack;
  final bool? showHeader;
  final String? title;
  final TextStyle? textStyle;
  final List<Widget> children;
  final Widget? header;
  final Widget? footer;
  final bool? scrollable;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0, 0.25],
                  colors: [
                    const Color(0xFF20BF55).withOpacity(0.3),
                    const Color(0xFF20BF55).withOpacity(0.05),
                  ],
                ),
              ),
              child: Padding(
                padding:footer!=null?EdgeInsetsDirectional.only(top: 16.h): EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Expanded(child: Padding(
                      padding: footer!=null? EdgeInsets.symmetric(horizontal: 16.w):EdgeInsets.zero,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsetsDirectional.only(top: 30.h,bottom: (showHeader==true?30:16).h),
                            child: Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  showBack==true?const ArrowBackButton():SizedBox(height: 35.h,),
                                  if(title !='')...[Text(title??'',style: AppTextStyle.s16_w600(color: context.colors.secondary),textAlign: TextAlign.center,)],
                                  const SizedBox.shrink()
                                ],
                              ),
                            ),
                          ),
                          if(showHeader==false&&header!=null)header??const SizedBox.shrink(),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              children: [
                                if(showHeader==true)const BuildHeaderLogo(),
                                ...children
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    if(footer!=null)footer??const SizedBox.shrink()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
