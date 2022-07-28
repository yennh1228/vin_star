import 'package:flutter/material.dart';

class BuildAvatar extends StatelessWidget {
  // final String avatarPic;
  final double radius;
  final String name;
  const BuildAvatar({Key? key, required this.radius, this.name = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        "assets/images/avatarPic.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
