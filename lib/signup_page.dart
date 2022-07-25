import 'package:flutter/material.dart';
import 'package:vin_star/profile_page.dart';
import 'common/build_button.dart';
import 'common/build_pass.dart';
import 'common/build_text_field.dart';
import 'common/color.dart';
import 'common/hot_line.dart';
// import 'common/keyboard.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late String phoneNum = '';
  late String name = "";
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
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      Stack(),
                      Container(
                        padding: const EdgeInsets.only(top: 100),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Image.asset("assets/images/vinstar_logo.png"),
                      ),
                      const SizedBox(height: 20),
                      BuildTextField(
                        labelText: 'Số điện thoại',
                        hintText: '0123456789',
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phoneNum = value;
                        },
                      ),
                      const SizedBox(height: 20),
                      BuildTextField(
                        labelText: 'Họ và Tên',
                        hintText: 'Nguyễn Văn A',
                        keyboardType: TextInputType.name,
                        onChanged: (value) {
                          name = value;
                        },
                      ),
                      const SizedBox(height: 20),
                      BuildPass(
                        onChanged: (value) {
                          pass = value;
                        },
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Button(
                            text: "Đăng ký",
                            textColor: AppColor.textColorWhite,
                            backgroundColor: AppColor.mainColor,
                            onPressed: () {
                              print("Đăng ký");
                              print(phoneNum);
                              print(name);
                              print(pass);
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => const ProfilePage(),
                                settings: const RouteSettings(name: "SignUp"),
                              ));
                            },
                          ),
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
