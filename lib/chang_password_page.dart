import 'package:flutter/material.dart';

import 'common/color.dart';

class ChangePassWord extends StatefulWidget {
  const ChangePassWord({Key? key}) : super(key: key);

  @override
  State<ChangePassWord> createState() => _ChangePassWordState();
}

class _ChangePassWordState extends State<ChangePassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đổi mật khẩu"),
        backgroundColor: AppColor.mainColor,
      ),
      body: Container(),
    );
  }
}
