import 'package:flutter/material.dart';
import 'package:note_app/sliding_screen/screen.dart';
import 'package:note_app/tabs/home.dart';
import 'package:note_app/Authentication/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) {
          return Screen();
        },
        '/home': (context) {
          return (Home());
        },
        '/sign_in': (context) {
          return (SignIn());
        },
      },
    );
  }
}
