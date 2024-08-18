// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';

// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen(
//       {super.key,
//       required this.thehinttext,
//       required this.theTitle,
//       required this.onSaved,
//       required this.keyboardType});
//   final String theTitle;
//   // final String thehinttext
//   final void Function(String?) onSaved;
//   final TextInputType keyboardType;
  
//   get thehinttext => null;

//   @override
//   State<MyHomeScreen> createState() => _MyHomeScreenState();
// }

// class _MyHomeScreenState extends State<MyHomeScreen> {
//   // TextEditingController tx = TextEditingController();
//   // var x = "";
//   var email = "";
//   final _loginFormKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     var thehinttext;
//     return Form(
//       key: _loginFormKey,
//       child: Container(
//         // color: Colors.pinkAccent,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 widget.theTitle,
//                 style: TextStyle(color: Colors.black, fontSize: 16),
//               ),
//             ),
//             // Text("Name"),
//             TextFormField(
//               keyboardType: widget.keyboardType,
//               onSaved: widget.onSaved,
//               decoration: InputDecoration(
//                 hintStyle: TextStyle(
//                     color: Color.fromRGBO(153, 151, 151,
//                         1)), //background: rgba(153, 151, 151, 1);

//                 hintText: widget.thehinttext,
//                 prefixIcon: Padding(
//                   padding: EdgeInsets.fromLTRB(12, 14, 12, 14),
//                 ),
//                 fillColor: Colors.white,
//                 filled: true,
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(15)),
//                   borderSide: BorderSide(
//                     width: 2.0,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     color: Colors.green,
//                     width: 2.0,
//                   ),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     color: Colors.red,
//                     width: 2.0,
//                   ),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     color: Colors.red,
//                     width: 2.0,
//                   ),
//                 ),
//                 errorStyle: TextStyle(color: Colors.redAccent),
//               ),
//               style: TextStyle(color: Colors.black),
//               validator: (val) {
//                 if (val == null || val.isEmpty) {
//                   return 'This field cannot be empty';
//                 }

//                 if (widget.theTitle == "Email:") {
//                   // Validate email format
//                   return !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)
//                       ? 'Enter a valid email address'
//                       : null;
//                 } else if (widget.theTitle == "Age:") {
//                   // Validate age to be a valid integer
//                   int? age = int.tryParse(val);
//                   return age == null || age < 0 ? 'Enter a valid age' : null;
//                 }

//                 // For Name, we can add additional validation if needed
//                 return null; // No validation error for Name
//               },
//               onChanged: (val) {
//                 setState(() {
//                   // Update the email variable only for the email field
//                   if (widget.theTitle == "Email:") {
//                     email = val;
//                   }
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
