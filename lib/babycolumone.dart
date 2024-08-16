import 'package:flutter/material.dart';
import 'package:stateful_lesson/myHome.dart';

class setofinputfields extends StatelessWidget {
  const setofinputfields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyHomeScreen(thehinttext: "Kavin", theTitle: "Name:"),
        MyHomeScreen(thehinttext: "Example@gmail.com", theTitle: "Email:"),
        MyHomeScreen(thehinttext: "20", theTitle: "Age"),
      ],
    );
  }
}
