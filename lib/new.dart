// // Ignore specific linter rules for this file.
// // - prefer_const_constructors: Allows using non-const constructors.
// // - prefer_const_literals_to_create_immutables: Allows using mutable literals without warnings.
// // The linter normally suggests using `const` where possible for performance optimization.
// // By ignoring these rules, the linter won’t generate warnings for not using `const` in these cases.
// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// // Import the material package, which provides the material design widgets and tools.
// import 'package:flutter/material.dart';

// // Define a stateful widget called MyHomeScreen.
// class MyHomeScreen extends StatefulWidget {
//   // Use the `const` keyword to create a constant constructor, improving performance.
//   const MyHomeScreen({super.key});

//   // Override the createState method to return the state object associated with this widget.
//   @override
//   State<MyHomeScreen> createState() => _MyHomeScreenState();
// }

// // Define the state class for MyHomeScreen.
// class _MyHomeScreenState extends State<MyHomeScreen> {
//   // Create a TextEditingController to manage the text input in the TextFormField.
//   TextEditingController tx = TextEditingController();

//   // Define a variable x to hold some string data. Initialize it as an empty string.
//   var x = "";

//   // Define a variable email to store the email input. Initialize it as an empty string.
//   var email = "";

//   // Create a GlobalKey for the form, which uniquely identifies the form and allows form validation.
//   final _loginFormKey = GlobalKey<FormState>();

//   // Override the build method to define the UI of the widget.
//   @override
//   Widget build(BuildContext context) {
//     // Return a Scaffold widget that provides the structure of the screen.
//     return Scaffold(
//       // Define the app bar at the top of the screen with a title.
//       appBar: AppBar(
//         // Set the background color using the inverse primary color from the theme.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Set the title of the app bar.
//         title: Text('App Bar'),
//       ),

//       // Define the body of the scaffold, which contains a form.
//       body: Form(
//         // Assign the GlobalKey to the form for validation purposes.
//         key: _loginFormKey,
//         // Use a Column widget to arrange its children vertically.
//         child: Column(
//           // Add children widgets to the column.
//           children: [
//             // Add a TextFormField for user input (email).
//             TextFormField(
//               // Customize the appearance of the TextFormField.
//               decoration: InputDecoration(
//                 // Set the hint text style to black.
//                 hintStyle: TextStyle(color: Colors.black),
//                 // Display a hint text inside the field.
//                 hintText: 'Enter your Email',
//                 // Add an email icon as a prefix inside the text field.
//                 prefixIcon: Padding(
//                   padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
//                   child: Icon(
//                     Icons.email,
//                     size: 23,
//                     color: Colors.black,
//                   ),
//                 ),
//                 // Set the background color of the text field to white.
//                 fillColor: Colors.white,
//                 filled: true,
//                 // Define the border when the field is enabled but not focused.
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     width: 2.0,
//                   ),
//                 ),
//                 // Define the border when the field is focused.
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     color: Colors.green,
//                     width: 2.0,
//                   ),
//                 ),
//                 // Define the border when there is an error and the field is focused.
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     color: Colors.red,
//                     width: 2.0,
//                   ),
//                 ),
//                 // Define the border when there is an error but the field is not focused.
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     color: Colors.red,
//                     width: 2.0,
//                   ),
//                 ),
//                 // Set the style for error messages.
//                 errorStyle: TextStyle(color: Colors.redAccent),
//               ),
//               // Set the style of the text entered into the field to black.
//               style: TextStyle(color: Colors.black),
//               // Add validation logic for the input.
//               // The input must be a non-empty string and exactly 10 characters long.
//               validator: (val) => val!.isEmpty || val.length != 10
//                   ? 'Enter a 10 Digit phone number' // Display this error message if validation fails.
//                   : null,
//               // Update the email variable when the input value changes.
//               onChanged: (val) {
//                 setState(() {
//                   email = val;
//                 });
//               },
//             ),
//             // Display the value of the variable x.
//             Text(x),
//             // Add a SizedBox to ensure the button takes up the full width.
//             SizedBox(
//               width: double.infinity,
//               // Add an ElevatedButton, a material design button that reacts to touches.
//               child: ElevatedButton(
//                 // Define the style of the button.
//                 style: ButtonStyle(
//                   // Set padding for the button content.
//                   padding:
//                       WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
//                   // Set the background color of the button.
//                   backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
//                   // Set the color of the button's shadow.
//                   shadowColor: WidgetStateProperty.all<Color>(Colors.grey),
//                   // Adjust the elevation of the button based on its state (e.g., pressed).
//                   elevation: WidgetStateProperty.resolveWith<double>(
//                     (Set<WidgetState> states) {
//                       if (states.contains(WidgetState.pressed)) return 10;
//                       return 5; // Default elevation when not pressed.
//                     },
//                   ),
//                   // Set the shape of the button (rounded corners).
//                   shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   // Set the animation duration for the button.
//                   animationDuration: Duration(milliseconds: 200),
//                 ),
//                 // Define the onPressed callback, which is triggered when the button is pressed.
//                 onPressed: () {
//                   // Validate the form when the button is pressed.
//                   if (_loginFormKey.currentState!.validate()) {
//                     // Additional logic can be added here if needed after validation.
//                   }
//                   // Update the state by setting the value of x to the text entered in the TextFormField.
//                   setState(() {
//                     x = tx.text;
//                   });
//                 },
//                 // Set the label text of the button.
//                 child: Text('Click'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
