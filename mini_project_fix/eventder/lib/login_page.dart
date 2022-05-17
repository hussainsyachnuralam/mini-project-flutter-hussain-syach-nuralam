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



// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'auth.dart';

// class LoginHomePage extends StatefulWidget {
//   const LoginHomePage({Key? key}) : super(key: key);

//   @override
//   _LoginHomePageState createState() => _LoginHomePageState();
// }

// class _LoginHomePageState extends State<LoginHomePage> {
//   String? email;
//   String? token;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     loadSharedPreference();
//   }

//   loadSharedPreference() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       email = prefs.getString('email');
//       token = prefs.getString('token');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: 800,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(10),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 email!,
//                 style: const TextStyle(
//                     fontSize: 28,
//                     color: Colors.black54,
//                     fontFamily: "Avenir",
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.normal),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 token!,
//                 style: const TextStyle(
//                     fontSize: 28,
//                     color: Colors.black54,
//                     fontFamily: "Avenir",
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.normal),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                   margin: const EdgeInsets.only(top: 30),
//                   width: MediaQuery.of(context).size.width,
//                   child: MaterialButton(
//                     onPressed: () {
//                       //action button logout
//                       fetchLogout(context);
//                     },
//                     child: const Text("Logout",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w700,
//                             fontSize: 16)),
//                     color: const Color(0xFFF58634),
//                     shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(50))),
//                     padding: const EdgeInsets.all(16),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void fetchLogout(BuildContext context) async {
//     // Remove data for the 'counter' key.
//     final prefs = await SharedPreferences.getInstance();
//     final removeEmail = await prefs.remove('email');
//     final removeToken = await prefs.remove('token');
//     Navigator.pushReplacement(context,
//         MaterialPageRoute(builder: (BuildContext context) => const Auth()));
//   }
// }
