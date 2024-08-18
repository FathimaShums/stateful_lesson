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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void submitData() {
    if (_formKey.currentState!.validate()) {
      // Create a Student object
      Students student = Students(
        _nameController.text,
        _emailController.text,
        int.parse(_ageController.text),
      );

      // Optional: Print the student object to console
      print(
          'Student Created: Name: ${student.name}, Age: ${student.age}, Email: ${student.email}');

      // Clear the input fields after submission
      _nameController.clear();
      _ageController.clear();
      _emailController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Replace setofinputfields() with actual input fields
                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(labelText: 'Name'),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a name';
                                }
                                return null;
                              },
                            ),

                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(labelText: 'Email'),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an email';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: _ageController,
                              decoration: InputDecoration(labelText: 'Age'),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an age';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: mycustombutton(
                      buttontext: "Add Student",
                      formKey: _formKey,
                      onPressed: submitData,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
