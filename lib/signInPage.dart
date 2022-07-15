import 'package:flutter/material.dart';
import 'package:vin_star/material/buildPass.dart';
import 'package:vin_star/material/buildPhoneNo.dart';
import 'package:vin_star/material/hotLine.dart';
import 'package:vin_star/material/signInButton.dart';
import 'package:vin_star/material/signUpButton.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final phoneController = TextEditingController();
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
            BuildPhoneNo(),
            const SizedBox(height: 20),
            const BuildPass(),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                SignUpButton(),
                SignInButton(),
              ],
            ),
            const SizedBox(height: 250),
            // HotLine()
          ]),
        ),
      ),
    ));
  }
}
