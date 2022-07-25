import 'package:flutter/material.dart';

class BuildAvatar extends StatelessWidget {
  final String avatarPic;
  final double radius;
  const BuildAvatar({Key? key, required this.avatarPic, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        avatarPic,
        fit: BoxFit.cover,
      ),
    );
  }
}
