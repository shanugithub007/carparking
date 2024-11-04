import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar(
      {super.key,
      required Text title,
      required bool centerTitle,
      required IconButton leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('',),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop(); // Navigate back to the previous screen
        },
      ),
    );
  }
}
