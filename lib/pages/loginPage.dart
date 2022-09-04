import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import '../controller/loginController.dart';
import '../widgets/loginWidgets.dart';

class LoginInPage extends StatefulWidget {
  LoginInPage({Key? key}) : super(key: key);

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends State<LoginInPage> {
  @override
  Widget build(BuildContext context) {
  final _controller = Get.put(LoginScreenController());
    return Scaffold(
        resizeToAvoidBottomInset: true,
        //backgroundColor: Color.fromARGB(255, 66, 111, 254),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          )),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              SizedBox(height: 110),
              // Neumorphic(
              //   child: Image.asset(
              //     "assets/images/logo2.png",
              //     height: 200,
              //     width: 200,
              //     color: Colors.white,
              //   ),
              //   style: NeumorphicStyle(
              //     depth: 3,
              //     lightSource: LightSource.left,
              //     color: Color(0xFF00B6F0),
              //   ),
              // ),
              Image.asset(
                "assets/images/logo2.png",
                height: 150,
                width: 150,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Container(
                  child: NeumorphicText(
                '掌上物记',
                textStyle: NeumorphicTextStyle(
                  fontFamily: 'myType',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
                style: NeumorphicStyle(
                  depth: 14,
                  lightSource: LightSource.right,
                  color: Colors.white,
                ),
              )),
              // Container(
              //     height: 50,
              //     width: double.infinity,
              //     margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              //     child: Expanded(
              //         child: inputBox(
              //             hint: '请输入账号邮箱',
              //             onChanged: _onTextChange1,
              //             preIcon: 'assets/images/user.png'))),
              SizedBox(height: 15),
              Neumorphic(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: inputBox(
                      hint: '请输入账号',
                      onChanged: _onTextChange1,
                      preIcon: 'assets/images/user.png',
                      controller: _controller.phone,),
                ),
                style: NeumorphicStyle(
                  depth: -3,
                  boxShape: const NeumorphicBoxShape.stadium(),
                  color: Color.fromARGB(255, 174, 175, 188),
                  shadowDarkColorEmboss: Color.fromARGB(255, 0, 0, 0),
                  shadowLightColorEmboss: Color.fromARGB(255, 0, 0, 0),
                ),
                margin: EdgeInsets.fromLTRB(30, 15, 30, 10),
              ),
              Neumorphic(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: inputBox(
                      hint: '请输入密码',
                      onChanged: _onTextChange2,
                      preIcon: 'assets/images/passwords.png',
                      isObscureText: true,
                      controller: _controller.password),
                ),
                style: NeumorphicStyle(
                  depth: -3,
                  boxShape: const NeumorphicBoxShape.stadium(),
                  color: Color.fromARGB(255, 174, 175, 188),
                  shadowDarkColorEmboss: Color.fromARGB(255, 0, 0, 0),
                  shadowLightColorEmboss: Color.fromARGB(255, 0, 0, 0),
                ),

                // style: const NeumorphicStyle(
                //   depth: -5,
                //   lightSource: LightSource.top,
                //   boxShape: NeumorphicBoxShape.stadium(),
                //   color: Colors.white,
                // ),
                margin: EdgeInsets.fromLTRB(30, 15, 30, 10),
              ),
              // Container(
              //     height: 50,
              //     width: double.infinity,
              //     margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              //     child: Expanded(
              //         child: inputBox(
              //             hint: '请输入密码',
              //             onChanged: _onTextChange2,
              //             preIcon: 'assets/images/passwords.png',
              //             isObscureText: true))),
              Container(child: LoginIcon()),
              Container(
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, '/signin');
                      },
                      child: Text('注册账号',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300)),
                    ),
                    Expanded(child: SizedBox()),
                    GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, '/forgetPage');
                        },
                        child: Text('忘记密码',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w300)))
                  ])),
              SizedBox(height: 50),
              Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(35, 0, 35, 40),
                  child: Row(
                    children: [
                      Text('其他登录方式',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(150),
                                      color: Colors.white),
                                  child: Center(
                                      child: Image.asset(
                                    'assets/images/QQ.png',
                                    width: 25,
                                    height: 25,
                                    color: Color(0xFF00B6F0),
                                  ))),
                              onTap: () {
                                //
                              }),
                          SizedBox(width: 30),
                          GestureDetector(
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(150),
                                      color: Colors.white),
                                  child: Center(
                                      child: Image.asset(
                                    'assets/images/wechat.png',
                                    width: 33,
                                    height: 33,
                                  ))),
                              onTap: () {
                                //
                              })
                        ],
                      )),
                      SizedBox(width: 60)
                    ],
                  )),
            ],
          ),
        ));
  }

  _onTextChange1(text) {}
  _onTextChange2(text) {}
}
