// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  TextEditingController usernameController = TextEditingController();
  var resulttxt = "Result Goes here:";
  var usernametxt = "";
  final _loginFormKey = GlobalKey<FormState>();

  void validateForm() {
    if (_loginFormKey.currentState!.validate()) {
      // You specify things to do when the form validations are all met...
      print("All validaitons are done");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("This screen is stateful "),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            TextFormField(
              onChanged: (val) {
                setState(() {
                  usernametxt = val;
                });
                //validateForm();
              },
              validator: (value) {
                if (value!.length < 10) {
                  return "Username has to have atleast 10 characters";
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Will have to call the form validations.
                validateForm();
              },
              child: Text('Run'),
            ),
            Text(usernametxt)
          ],
        ),
      ),
    );
  }
}
