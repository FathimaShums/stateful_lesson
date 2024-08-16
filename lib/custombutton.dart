import 'package:flutter/material.dart';

class mycustombutton extends StatefulWidget {
  const mycustombutton({super.key, required this.buttontext});
  final String buttontext;

  @override
  State<mycustombutton> createState() => _mycustombuttonState();
}

class _mycustombuttonState extends State<mycustombutton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          //style: ElevatedButton.styleFrom(
          //iconColor: Color.fromRGBO(59, 143, 255, 1.0)),
          onPressed: () {},
          child: Text(widget.buttontext),
        ),
      ],
    );
  }
}
