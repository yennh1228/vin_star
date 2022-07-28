import 'package:flutter/material.dart';
import 'package:vin_star/chang_password_page.dart';
import 'package:vin_star/check.dart';
import 'package:vin_star/common/ListViewMenu.dart';
import 'package:vin_star/common/avatar.dart';
import 'package:vin_star/common/color.dart';
import 'package:vin_star/contact_page.dart';
import 'package:vin_star/new_feed_page.dart';
import 'package:vin_star/report_page.dart';
import 'package:vin_star/signin_page.dart';

class LeftMenuPage extends StatefulWidget {
  const LeftMenuPage({Key? key}) : super(key: key);

  @override
  State<LeftMenuPage> createState() => _LeftMenuPageState();
}

class _LeftMenuPageState extends State<LeftMenuPage> {
  final menu = <ListViewMenu>[];

  @override
  void initState() {
    menu.addAll([
      ListViewMenu(const NewFeedPage(), Icons.list, "Sự cố"),
      ListViewMenu(const ReportPage(), Icons.report, "Cảnh báo"),
      ListViewMenu(const ChangePassWord(), Icons.security, "Đổi mật khẩu"),
      ListViewMenu(const Check(), Icons.receipt, "Điều khoản"),
      ListViewMenu(const ContactPage(), Icons.contacts, "Liên hệ"),
      ListViewMenu(const SignInPage(), Icons.exit_to_app, "Đăng xuất"),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 3 / 4,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            color: AppColor.mainColor,
            height: MediaQuery.of(context).size.height / 7,
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 32, right: 32),
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: const BuildAvatar(radius: 100)),
                        const SizedBox(width: 24),
                        menuAvatar(),
                      ],
                    ))
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 6 / 7,
              color: Colors.white,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(menu[index].icon),
                    title: Text(menu[index].menuName),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => menu[index].nextPageName)),
                  );
                },
                itemCount: menu.length,
              )),
        ],
      ),
    );
  }

  Widget menuAvatar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hieu Tao",
            style: const TextStyle(color: Colors.white, fontSize: 16)),
        SizedBox(height: 16),
        Text("0944556692", style: TextStyle(color: Colors.white, fontSize: 16))
      ],
    );
  }
}
