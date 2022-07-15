import 'package:flutter/material.dart';

class BuildPhoneNo extends StatelessWidget {
  const BuildPhoneNo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    return TextField(
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
  }
}
