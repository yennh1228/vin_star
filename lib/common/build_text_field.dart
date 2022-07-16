import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;

  const BuildTextField({
    Key? key,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buildController = TextEditingController();
    return TextField(
      onChanged: onChanged,
      controller: buildController,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        hintText: hintText,
        suffixIcon: buildController.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                onPressed: () {
                  return buildController.clear();
                },
                icon: const Icon(Icons.close),
              ),
      ),
    );
  }
}
