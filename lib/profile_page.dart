import 'package:flutter/material.dart';
import 'package:vin_star/common/build_text_field.dart';
import 'package:vin_star/left_menu_page.dart';
import 'common/avatar.dart';
import 'common/build_button.dart';
import 'common/color.dart';
import 'common/hot_line.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String phoneNum = "";
  late String name = "";
  late String pass = "";
  late String dateOfBirth = "";
  late String adress = "";
  late String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        title: const Text("Tài Khoản"),
      ),
      drawer: const LeftMenuPage(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 150,
                            height: 150,
                            child: const BuildAvatar(
                              radius: 100,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 10,
                            child: IconButton(
                              onPressed: () {
                                print("Upload Picture");
                              },
                              icon: const Icon(
                                Icons.photo_camera,
                                color: AppColor.mainColor,
                              ),
                            ),
                          )
                        ],
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
                      BuildTextField(
                        labelText: 'Ngày sinh',
                        hintText: 'DD/MM/YYYY',
                        keyboardType: TextInputType.datetime,
                        onChanged: (value) {
                          dateOfBirth = value;
                        },
                      ),
                      const SizedBox(height: 20),
                      BuildTextField(
                        labelText: 'Địa chỉ',
                        hintText: 'Địa chỉ',
                        keyboardType: TextInputType.datetime,
                        onChanged: (value) {
                          adress = value;
                        },
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
                        labelText: 'Email',
                        hintText: 'abc@mail.com',
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Button(
                            text: "Lưu",
                            textColor: AppColor.textColorWhite,
                            backgroundColor: AppColor.mainColor,
                            onPressed: () {
                              print(name);
                              print(dateOfBirth);
                              print(adress);
                              print(phoneNum);
                              print(email);
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(
                              //         builder: (context) => LeftMenuPage()));
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
}
