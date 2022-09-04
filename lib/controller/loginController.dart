import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo/pages/mainPage.dart';
import 'package:login_demo/utils/SystemConstants.dart';

class LoginScreenController extends GetxController {
  late TextEditingController phone;
  late TextEditingController password;
  @override
  void onInit() {
    super.onInit();
    phone = TextEditingController();
    password = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    phone.dispose();
    password.dispose();
  }

  Future login(BuildContext context) async {
    Response resp = await GetConnect().post(
      requestPath,
      {
        "id": phone.value.text,
        "pwd": password.value.text,
        "token": "SOSD",
      },
      contentType: "application/json",
    );
    print(resp.body);
    Get.to(mainPage());
  }
}
