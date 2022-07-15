import 'package:flutter/material.dart';

class HotLine extends StatelessWidget {
  const HotLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    ;
  }
}
