import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo/controller/loginController.dart';

import '../pages/mainPage.dart';
import '../style/colors.dart';

//输入框
class inputBox extends StatefulWidget {
  final String hint; //默认提示文案
  final String defaultText; //输入框中填入的文案
  final bool isObscureText; //是否显示密码
  final String preIcon; //图标图片的路径
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  const inputBox(
      {Key? key,
      required this.hint,
      required this.onChanged,
      required this.preIcon,
      this.isObscureText = false,
      this.defaultText = '',
      required this.controller})
      : super(key: key);

  @override
  State<inputBox> createState() => _inputBoxState();
}

class _inputBoxState extends State<inputBox> {
  bool showClear = false; //是否显示Claer按钮（SearchBar右边的x号，清空输入）
  late final FocusNode focusNode; //传入FocusNode，用于监听TextField获取焦点事件

  @override
  void initState() {
    if (widget.defaultText != null) {
      setState(() {
        widget.controller.text = widget.defaultText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: background,
        //Color.fromARGB(255, 88, 75, 149),
        //Color.fromARGB(255, 60, 92, 232),
        border: Border.all(color: Colors.white, width: 0.7),
        borderRadius: const BorderRadius.all(Radius.circular(25.0)), //圆角
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            widget.preIcon,
            width: 25,
            height: 30,
            color: nearlyBlueClr,
          ),
          Expanded(
              flex: 1,
              child: TextField(
                controller: widget.controller,
                onChanged: _onChanged,
                obscureText: widget.isObscureText,
                style: const TextStyle(
                    fontSize: 18.0,
                    color: nearlyBlack,
                    fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                  border: InputBorder.none,
                  hintText: widget.hint,
                  hintStyle: const TextStyle(
                      fontSize: 16,
                      color: nearlyBlack,
                      fontWeight: FontWeight.w300),
                ),
              )),
          !showClear
              ? const SizedBox.shrink()
              : _wrapTap(
                  const Icon(
                    Icons.clear,
                    size: 22,
                    color: nearlyBlack,
                  ), () {
                  setState(() {
                    widget.controller.clear();
                  });
                  _onChanged('');
                })
        ],
      ),
    );
  }

  _onChanged(String text) {
    if (text.length > 0) {
      setState(() {
        showClear = true;
      });
    } else {
      setState(() {
        showClear = false;
      });
    }
    if (widget.onChanged != null) {
      widget.onChanged(text);
    }
  }

  _wrapTap(Widget child, void Function() callback) {
    return GestureDetector(
      onTap: () {
        if (callback != null) callback();
      },
      child: child,
    );
  }
}

//登录按钮
class LoginIcon extends StatefulWidget {
  LoginIcon({Key? key}) : super(key: key);

  @override
  State<LoginIcon> createState() => _LoginIconState();
}

class _LoginIconState extends State<LoginIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          _login();
        },
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white, //Color.fromARGB(255, 255, 105, 180),
            border: Border.all(color: Colors.white, width: 0.7),
          ),
          alignment: Alignment.center,
          child: Text(
            '登 录',
            style: TextStyle(
                color: Color.fromARGB(255, 66, 111, 254),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  _login() {
    final _loginController = Get.find<LoginScreenController>();
    _loginController.login(context);
  }
}
