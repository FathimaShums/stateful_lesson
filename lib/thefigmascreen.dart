import 'package:flutter/material.dart';
import 'package:stateful_lesson/babycolumone.dart';
import 'package:stateful_lesson/custombutton.dart';
import 'package:stateful_lesson/forminfo.dart';
import 'package:stateful_lesson/myHome.dart';

class figmascreen extends StatelessWidget {
  const figmascreen({super.key});

  @override
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  forminfo(),
                  setofinputfields(),
                  Container(
                    padding: EdgeInsets.all(10), //3B8FF0
                    child: mycustombutton(buttontext: "Add Student"),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Column(
                children: [mycustombutton(buttontext: "Add All")],
              ),
            )
          ],
        ),
      ),
    );
  }
}
