// import 'package:flutter/material.dart';
// import 'package:stateful_lesson/custombutton.dart';

// class setofinputfields extends StatelessWidget {
//   setofinputfields({super.key});
//   String _thename = "";
//   String _theemail = "";
//   int _theage = 0;

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // 
//           mycustombutton(
//             buttontext: "Submit",
//             onPressed: () {
//               if (_formKey.currentState!.validate()) {
//                 _formKey.currentState!.save(); // Call onSaved
//                 print("Name: $_thename, Email: $_theemail, Age: $_theage");
//               }
//             },
//             formKey: _formKey,
//           ),
//         ],
//       ),
//     );
//   }
// }
