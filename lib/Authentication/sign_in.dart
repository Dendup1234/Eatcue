import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: TextButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 1, 69, 20),
            size: 30,
          ),
          label: Text(
            "Back",
            style: TextStyle(
              color: Color.fromARGB(255, 1, 69, 20),
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 69, 20),
                  fontFamily: 'Mangsi',
                  fontSize: 40.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
