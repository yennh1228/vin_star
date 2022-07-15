import 'package:flutter/material.dart';
import 'package:vin_star/material/buildPhoneNo.dart';
import 'package:vin_star/material/buildPass.dart';
import 'package:vin_star/material/hotLine.dart';
import 'package:vin_star/material/signInButton.dart';
import 'package:vin_star/material/signUpButton.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  String password = '';
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 100),
              width: MediaQuery.of(context).size.width / 2.5,
              child: Image.asset("assets/images/vinstar_logo.png"),
            ),
            const SizedBox(height: 20),
            buildName(),
            const SizedBox(height: 20),
            BuildPhoneNo(),
            const SizedBox(height: 20),
            BuildPass(),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SignUpButton(),
              ],
            ),
            const SizedBox(height: 250),
            HotLine(),
          ]),
        ),
      ),
    ));
  }

  TextField buildName() => TextField(
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Họ và Tên',
          hintText: 'Nguyễn Văn A',
          suffixIcon: phoneController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  onPressed: () {
                    return nameController.clear();
                  },
                  icon: const Icon(Icons.close),
                ),
        ),
      );
}
