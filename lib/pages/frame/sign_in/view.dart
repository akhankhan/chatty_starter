import 'package:chatty/common/values/colors.dart';
import 'package:chatty/pages/frame/sign_in/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text(
        'Chatty .',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.bold,
          fontSize: 34.sp,
        ),
      ),
    );
  }

  Widget _buildThirdPartyLogin(String loginType, String logo) {
    return GestureDetector(
      onTap: () {
        controller.handleSignIn('google');
      },
      child: Container(
        width: 295.5.w,
        height: 44.h,
        padding: EdgeInsets.all(10.h),
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1)),
          ],
        ),
        child: Row(
          mainAxisAlignment:
              logo.isEmpty ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            logo.isEmpty
                ? Container()
                : Container(
                    padding: EdgeInsets.only(left: 40.w, right: 30.w),
                    child: Image.asset('assets/icons/$logo.png'),
                  ),
            Container(
              child: Text(
                'Sign in with $loginType',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrWidget() {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              indent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
          const Text(' or '),
          Expanded(
            child: Divider(
              endIndent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpWidget() {
    return Column(
      children: [
        GestureDetector(
          child: Text(
            "Already have an account?",
            style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.normal,
              fontSize: 12.sp,
            ),
          ),
        ),
        GestureDetector(
          child: Text(
            "Sign up here",
            style: TextStyle(
              color: AppColors.primaryElement,
              fontWeight: FontWeight.normal,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildThirdPartyLogin("Google", "google"),
            _buildThirdPartyLogin("Facebook", "facebook"),
            _buildThirdPartyLogin("Apple", "apple"),
            _buildOrWidget(),
            _buildThirdPartyLogin("phone number", ""),
            25.verticalSpace,
            _buildSignUpWidget(),
          ],
        ),
      ),
    );
  }
}
