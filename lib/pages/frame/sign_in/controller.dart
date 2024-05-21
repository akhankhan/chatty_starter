import 'dart:developer';

import 'package:chatty/common/entities/entities.dart';
import 'package:chatty/common/routes/names.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'state.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['openid'],
  );

  void handleSignIn(String type) async {
    // 1: email, 2: google, 3: facebook, 4: apple, 5: phone
    try {
      if (type == 'phone number') {
      } else if (type == 'google') {
        var user = await _googleSignIn.signIn();
        if (user != null) {
          String? displayName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photoUrl = user.photoUrl ?? 'assets/icons/google.png';
          log('checkk name:: $email');
          LoginRequestEntity loginPanelListRequestEntity = LoginRequestEntity();
          loginPanelListRequestEntity.avatar = photoUrl;
          loginPanelListRequestEntity.name = displayName;
          loginPanelListRequestEntity.email = email;
          loginPanelListRequestEntity.open_id = id;
          loginPanelListRequestEntity.type = 2;
          asyncPostAllData();
        }
      } else if (type == 'facebook') {}
    } catch (e) {
      log('Error signing in with $type: $e');

      if (kDebugMode) {
        print('Error signing in $type: $e');
      }
    }
  }

  asyncPostAllData() {
    Get.offAllNamed(AppRoutes.Message);
  }
}
