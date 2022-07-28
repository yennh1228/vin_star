import 'package:flutter/material.dart';
import 'package:vin_star/left_menu_page.dart';

import 'common/color.dart';

class NewFeedPage extends StatefulWidget {
  const NewFeedPage({Key? key}) : super(key: key);

  @override
  State<NewFeedPage> createState() => _NewFeedPageState();
}

class _NewFeedPageState extends State<NewFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sự Cố"),
        backgroundColor: AppColor.mainColor,
      ),
      drawer: LeftMenuPage(),
      body: Container(),
    );
  }
}
