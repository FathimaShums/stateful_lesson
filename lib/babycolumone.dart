import 'package:flutter/material.dart';
import 'package:stateful_lesson/myHome.dart';

class setofinputfields extends StatelessWidget {
  setofinputfields({super.key});
  String _thename = "";
  String _theemail = "";
  int _theage = 0;

  @override
  Widget build(BuildContext context) {
    //var val;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyHomeScreen(
            thehinttext: "Kavin",
            theTitle: "Name:",
            onSaved: (value) {
              _thename = value!;
            },
            keyboardType: TextInputType.name),
        MyHomeScreen(
            thehinttext: "Kavin",
            theTitle: "Email:",
            onSaved: (value) {
              _theemail = value!;
            },
            keyboardType: TextInputType.name),
        MyHomeScreen(
            thehinttext: "Kavin",
            theTitle: "Age:",
            onSaved: (value) {
              _theage = value! as int;
            },
            keyboardType: TextInputType.number)
        // MyHomeScreen(thehinttext: "Kavin", theTitle: "Name:"),
        // MyHomeScreen(thehinttext: "Example@gmail.com", theTitle: "Email:"),
        // MyHomeScreen(thehinttext: "20", theTitle: "Age"),
      ],
    );
  }
}
