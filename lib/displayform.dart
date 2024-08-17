import 'package:flutter/material.dart';
import 'package:stateful_lesson/babycolumone.dart';
import 'package:stateful_lesson/custombutton.dart';
import 'package:stateful_lesson/forminfo.dart';
import 'package:stateful_lesson/models/students.dart';

class displayform extends StatefulWidget {
  const displayform({super.key});

  @override
  State<displayform> createState() => _displayformState();
}

class _displayformState extends State<displayform> {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final String _thename = '';
  final int _theage = 0;
  final String _theemail = '';
  submitData() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Create a Student object
      Students student = Students(_thename, _theemail, _theage);

      // Optional: Print the student object to console
      print(
          'Student Created: Name: ${student.name}, Age: ${student.age}, Email: ${student.email}');

      // Clear the input values after submission
      // _thename = '';
      // _theage = 0;
      // _theemail = '';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        color: Colors.purpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.amberAccent,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 48),
                      child: forminfo()),
                  setofinputfields(),
                  Container(
                    padding: EdgeInsets.all(10), //3B8FF0
                    child: mycustombutton(buttontext: "Add Student"),
                  ),
                ],
              ),
            ),
            // Container(
            //   color: Colors.blueGrey,
            //   child: Column(
            //     children: [mycustombutton(buttontext: "Add All")],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
