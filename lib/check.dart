import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CHECK"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const ListTile(
              leading: Icon(Icons.list), title: Text("badjbajdhvbakdvhbadhjv"));
        },
        itemCount: 6,
      ),
    );
  }
}
