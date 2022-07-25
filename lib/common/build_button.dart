import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;

  const Button({
    Key? key,
    this.onPressed,
    this.text,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: backgroundColor,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            "$text",
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}


// ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         primary: backgroundColor,
//       ),
      // onPressed: onPressed,
      // child: Text(
      //   "$text",
      //   style:
      //       const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      // ),
//     );


//  onPressed: () {
//             print("Đăng ký");
//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(
//             //     builder: (context) => const SignUpPage(),
//             //   ),
//             // );
//           },