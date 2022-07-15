import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
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
}
