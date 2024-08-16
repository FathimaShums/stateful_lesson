import 'package:flutter/material.dart';
import 'package:stateful_lesson/forminfo.dart';
import 'package:stateful_lesson/myHome.dart';

class Babycolumone extends StatelessWidget {
  const Babycolumone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        forminfo(),
        MyHomeScreen(thehinttext: "Kavin", theTitle: "Name")
      ],
    ));
  }
}
