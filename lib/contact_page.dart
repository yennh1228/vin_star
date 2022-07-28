import 'package:flutter/material.dart';

import 'common/color.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liên hệ"),
        backgroundColor: AppColor.mainColor,
      ),
      body: Container(),
    );
  }
}
