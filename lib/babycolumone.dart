import 'package:flutter/material.dart';
import 'package:stateful_lesson/custombutton.dart';
import 'package:stateful_lesson/myHome.dart';

class setofinputfields extends StatelessWidget {
  setofinputfields({super.key});
  String _thename = "";
  String _theemail = "";
  int _theage = 0;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // MyHomeScreen(
          //     thehinttext: "Kavin",
          //     theTitle: "Name:",
          //     onSaved: (value) {
          //       _thename = value ?? ""; // Handle null
          //     },
          //     keyboardType: TextInputType.name),
          // MyHomeScreen(
          //     thehinttext: "Example@gmail.com",
          //     theTitle: "Email:",
          //     onSaved: (value) {
          //       _theemail = value ?? ""; // Handle null
          //     },
          //     keyboardType: TextInputType.emailAddress),
          // MyHomeScreen(
          //     thehinttext: "20",
          //     theTitle: "Age:",
          //     onSaved: (value) {
          //       _theage = int.tryParse(value ?? "") ?? 0; // Safely parse
          //     },
          // keyboardType: TextInputType.number),
          mycustombutton(
            buttontext: "Submit",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save(); // Call onSaved
                print("Name: $_thename, Email: $_theemail, Age: $_theage");
              }
            },
            formKey: _formKey,
          ),
        ],
      ),
    );
  }
}
