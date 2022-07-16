import 'package:flutter/material.dart';

class BuildPass extends StatefulWidget {
  final Function(String)? onChanged;
  const BuildPass({Key? key, this.onChanged}) : super(key: key);

  @override
  State<BuildPass> createState() => _BuildPassState();
}

class _BuildPassState extends State<BuildPass> {
  String password = '';
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
  }
}
