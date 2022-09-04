import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo/pages/imagePick.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Get.to(ImagePickerPage());
              },
              child: Container(
                width: 150,
                height: 80,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color.fromARGB(
                      255, 161, 173, 172), //Color.fromARGB(255, 255, 105, 180),
                  border: Border.all(color: Colors.white, width: 0.7),
                ),
                alignment: Alignment.center,
                child: Text(
                  '选取单张',
                  style: TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
