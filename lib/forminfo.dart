import 'package:flutter/material.dart';
import 'package:stateful_lesson/myinputtitle.dart';

class forminfo extends StatelessWidget {
  const forminfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "The Student Details",
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "please enter student details",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 99, 97, 97)),
                ),
              ), //#999797
            ],
          ),
          //Column(
          // children: [myinputtitle(thetitle: "Name")],
        ],
      ),
    );
  }
}
