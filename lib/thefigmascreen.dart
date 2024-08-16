import 'package:flutter/material.dart';
import 'package:stateful_lesson/custombutton.dart';
import 'package:stateful_lesson/forminfo.dart';
import 'package:stateful_lesson/myHome.dart';

class figmascreen extends StatelessWidget {
  const figmascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            forminfo(),
            MyHomeScreen(thehinttext: "Kavin", theTitle: "Name:"),
            MyHomeScreen(thehinttext: "Example@gmail.com", theTitle: "Email:"),
            MyHomeScreen(thehinttext: "20", theTitle: "Age"),
            mycustombutton(buttontext: "Add Student")
          ],
        ),
      ),
    );
  }
}
