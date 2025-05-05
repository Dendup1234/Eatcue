import 'package:flutter/material.dart';
import 'package:note_app/listview/slide_listview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset("assets/Logo.png"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 500.0,
              child: PageView.builder(
                controller: _controller,
                itemCount: slides.length,
                itemBuilder: (context, index) {
                  final items = slides[index];
                  return Column(
                    children: [
                      Image.asset(items.image),
                      SizedBox(height: 60.0),
                      Center(
                        child: Text(
                          items.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'MyFont',
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Center(
                        child: Text(
                          items.description,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0,
                            fontFamily: 'MyFont',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: slides.length,
              effect: WormEffect(),
            ),
            SizedBox(height: 60.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/start');
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontFamily: 'MyFont'),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 69, 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign_in');
              },
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 69, 20),
                  fontFamily: 'MyFont',
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
