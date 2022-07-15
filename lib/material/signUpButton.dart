import 'package:flutter/material.dart';
import 'package:vin_star/signUpPage.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Đăng ký");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUpPage(),
          ),
        );
      },
      child: const Text(
        "Đăng ký",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
