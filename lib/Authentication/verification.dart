import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  int? code_number;
  bool _validateCode = false;

  @override
  Widget build(BuildContext context) {
    //final String phoneNumber =
    //  ModalRoute.of(context)!.settings.arguments as String;
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
        padding: const EdgeInsets.fromLTRB(30.0, 60.0, 10.0, 0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Verification",
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 69, 20),
                  fontFamily: 'Mangsi',
                  fontSize: 40.0,
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "A 4 Digit code has been sent to 12345678",
                style: TextStyle(fontFamily: "My Font"),
              ),
            ),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 23, 231, 30),
                  ),
                ),
              ),
            ),

            SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }
}
