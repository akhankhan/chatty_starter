import 'package:chatty/common/services/services.dart';
import 'package:chatty/common/store/store.dart';
import 'package:chatty/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await Get.putAsync(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}
