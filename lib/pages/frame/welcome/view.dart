import 'package:chatty/pages/frame/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/values/colors.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  Widget _buildPageHeadTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(top: 350),
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: TextStyle(
          color: AppColors.primaryElementText,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 45.sp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: SizedBox(
          width: 360.w,
          height: 780.h,
          child: _buildPageHeadTitle(controller.title)),
    );
  }
}
