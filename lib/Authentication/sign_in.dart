import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String? _phonenumber;
  bool _isPhoneValid = false;

  void Valid_Phone_Number(String phone_number, bool _isValid) {
    setState(() {
      _phonenumber = phone_number;
      _isPhoneValid = _isValid;
    });
  }

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
        padding: const EdgeInsets.fromLTRB(30.0, 60.0, 10.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 30.0),
            Text(
              "PHONE NUMBER",
              style: TextStyle(
                color: Color.fromARGB(255, 1, 69, 20),
                fontFamily: 'My Font',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 30.0),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(borderSide: BorderSide()),
              ),
              initialCountryCode: 'US',
              onChanged: (phone) {
                Valid_Phone_Number(phone.number, phone.number.length >= 10);
              },
            ),
            Divider(
              height: 0,
              color: Color.fromARGB(255, 1, 69, 20),
              thickness: 2,
            ),
            SizedBox(height: 60.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed:
                    _isPhoneValid
                        ? () {
                          Navigator.pushNamed(
                            context,
                            '/verification',
                            arguments: _phonenumber,
                          );
                        }
                        : null,
                child: Text(
                  "Continue",
                  style: TextStyle(fontFamily: "My Font", color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _isPhoneValid
                          ? Color.fromARGB(255, 1, 69, 20)
                          : const Color.fromARGB(255, 103, 102, 102),
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "I don't have an account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "My Font",
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 1, 69, 20),
                    color: Color.fromARGB(255, 1, 69, 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "OR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "My Font",
                  color: const Color.fromARGB(255, 152, 151, 151),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/apple.png", height: 20, width: 20),
                  SizedBox(width: 20),
                  Text(
                    "Continue With Apple",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "My Font",
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/google.png", height: 20, width: 20),
                  SizedBox(width: 20),
                  Text(
                    "Continue With Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "My Font",
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/facebook.png", height: 20, width: 20),
                  SizedBox(width: 20),
                  Text(
                    "Continue With Facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "My Font",
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
