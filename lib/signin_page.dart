import 'package:flutter/material.dart';
import 'package:vin_star/signup_page.dart';

import 'common/build_button.dart';
import 'common/build_pass.dart';
import 'common/build_text_field.dart';
import 'common/color.dart';
import 'common/hot_line.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late String phoneNum = "";
  late String pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(top: 100),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Image.asset("assets/images/vinstar_logo.png"),
                      ),
                      const SizedBox(height: 20),
                      BuildTextField(
                          labelText: 'Số điện thoại',
                          hintText: '0123456789',
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            phoneNum = value;
                          }),
                      const SizedBox(height: 20),
                      BuildPass(onChanged: (value) {
                        pass = value;
                      }),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Button(
                            text: "Đăng ký",
                            textColor: AppColor.textColorBlack,
                            onPressed: () {
                              print("Đăng ký");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              );
                            },
                          ),
                          Button(
                              backgroundColor: AppColor.mainColor,
                              text: "Đăng nhập",
                              textColor: AppColor.textColorWhite,
                              onPressed: () {
                                print(phoneNum);
                                print(pass);
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const HotLine(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
