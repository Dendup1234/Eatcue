import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String? otp;
  bool is_valid = false;

  void Otp_store(String otp) {
    setState(() {
      otp = otp;
      is_valid = otp.length == 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String phoneNumber =
        ModalRoute.of(context)!.settings.arguments as String;
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
                "A 4 Digit code has been sent to ${phoneNumber}",
                style: TextStyle(fontFamily: "My Font"),
              ),
            ),
            SizedBox(height: 40),
            OtpTextField(
              numberOfFields: 4,
              borderColor: Colors.grey,
              focusedBorderColor: Color.fromARGB(255, 1, 69, 20),
              showFieldAsBox: false,
              borderWidth: 4.0,
              fieldWidth: 60,
              //runs when a code is typed in
              onCodeChanged: Otp_store,
              //runs when every textfield is filled
              onSubmit: Otp_store,
            ),
            SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: is_valid ? () {} : null,
                child: Text(
                  "Verify",
                  style: TextStyle(fontFamily: "My Font", color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      is_valid
                          ? Color.fromARGB(255, 1, 69, 20)
                          : const Color.fromARGB(255, 103, 102, 102),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
