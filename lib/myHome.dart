// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen(
      {super.key, required this.thehinttext, required this.theTitle});
  final String theTitle;
  final String thehinttext;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  TextEditingController tx = TextEditingController();
  var x = "";
  var email = "";
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _loginFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.theTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          // Text("Name"),
          TextFormField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black),
              hintText: widget.thehinttext,
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB(12, 14, 12, 14),
              ),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
              errorStyle: TextStyle(color: Colors.redAccent),
            ),
            style: TextStyle(color: Colors.black),
            validator: (val) => val!.isEmpty || val.length != 10
                ? 'Enter a 10 Digit phone number' //Error Message
                : null,
            onChanged: (val) {
              setState(() {
                email = val;
              });
            },
          ),
          Text(x),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                  padding:
                      WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                  shadowColor: WidgetStateProperty.all<Color>(Colors.grey),
                  elevation: WidgetStateProperty.resolveWith<double>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) return 10;
                      return 5; // default elevation
                    },
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  animationDuration: Duration(milliseconds: 200)),
              onPressed: () {
                if (_loginFormKey.currentState!.validate()) {}
                setState(() {
                  x = tx.text;
                });
              },
              child: Text('Click'),
            ),
          )
        ],
      ),
    ));
  }
}
