import 'package:chatty/common/routes/names.dart';
import 'package:get/get.dart';

import 'state.dart';

class MessageController extends GetxController {
  MessageController();
  final state = MessageState();

  void goProfile() async {
    await Get.toNamed(AppRoutes.Profile);
  }
}
