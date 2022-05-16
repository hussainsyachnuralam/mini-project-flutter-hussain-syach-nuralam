// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // text controllers
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: _emailController.text.trim(),
//       password: _passwordController.text.trim(),
//     );
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//           child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.android,
//               size: 100,
//             ),
//             SizedBox(height: 75),
//             Text(
//               'Hello EvenDerians',
//               style: GoogleFonts.bebasNeue(
//                 fontSize: 45,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Welcome To EventDer, You\'ve been waited',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 50),

//             // email textfield
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: TextField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   hintText: 'Your Email',
//                   fillColor: Colors.grey[200],
//                   filled: true,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),

//             // password textfield
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: TextField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   hintText: 'Your Password',
//                   fillColor: Colors.grey[200],
//                   filled: true,
//                 ),
//               ),
//             ),

//             SizedBox(height: 10),

//             // sign in button
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: GestureDetector(
//                 onTap: signIn,
//                 child: Container(
//                   padding: EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Login',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
