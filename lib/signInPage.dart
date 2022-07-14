import 'package:flutter/material.dart';

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
            buildPhoneNo(),
            const SizedBox(height: 20),
            buildPass(),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                signUp(),
                signIn(),
              ],
            ),
            const SizedBox(height: 250),
            hotLine()
          ]),
        ),
      ),
    ));
  }

  TextField buildPhoneNo() => TextField(
        controller: phoneController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Số điện thoại',
          hintText: '0123456789',
          suffixIcon: phoneController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  onPressed: () {
                    return phoneController.clear();
                  },
                  icon: const Icon(Icons.close),
                ),
        ),
      );

  TextField buildPass() => TextField(
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Mật khẩu',
          hintText: 'Mật khẩu',
          suffixIcon: IconButton(
              icon: isPasswordVisible
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
              onPressed: () =>
                  setState(() => isPasswordVisible = !isPasswordVisible)),
        ),
        obscureText: isPasswordVisible,
      );

  TextButton signUp() {
    return TextButton(
      onPressed: () {
        print("Đăng");
      },
      child: const Text(
        "Đăng ký",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  ElevatedButton signIn() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff009688),
      ),
      onPressed: () {
        print("Đăng nhập");
      },
      child: const Text(
        "Đăng nhập",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  RichText hotLine() {
    return RichText(
      text: const TextSpan(
        text: 'HotLine: ',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
              text: '1800.1186',
              style: TextStyle(fontSize: 16, color: Color(0xff009688))),
        ],
      ),
    );
  }
}
