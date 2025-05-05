import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    const Color myPrimaryColor = Color.fromARGB(255, 1, 69, 20);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: myPrimaryColor, size: 30),
              label: Text(
                "Exit",
                style: TextStyle(
                  fontFamily: "My Font",
                  color: myPrimaryColor,
                  fontSize: 18.0,
                ),
              ),
            ),
            Divider(height: 10.0, thickness: 1.0, color: Colors.grey[200]),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0),
        child: Column(
          children: [
            SizedBox(height: 40.0),
            Text(
              "Let's see how we can help",
              style: TextStyle(
                color: myPrimaryColor,
                fontFamily: "Mangsi",
                fontSize: 40.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            Image.asset("assets/quiz.png"),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                "We personalize your experience and lessons based on your goals and preferences.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "My Font",
                  color: const Color.fromARGB(255, 102, 102, 102),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                "3 min",
                style: TextStyle(color: Colors.grey, fontFamily: "My Font"),
              ),
              icon: Icon(Icons.timer, color: Colors.grey[600]),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/quiz1');
                },
                child: Text(
                  "LET'S BEGIN",
                  style: TextStyle(fontFamily: "My Font", color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 1, 69, 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
