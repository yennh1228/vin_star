import 'package:flutter/material.dart';
import 'package:vin_star/common/color.dart';
import 'package:vin_star/left_menu_page.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Báo cáo"),
        backgroundColor: AppColor.mainColor,
      ),
      body: Container(),
    );
  }
}
