import 'package:flutter/material.dart';
import 'package:note_app/quiz/question1.dart';
import 'package:note_app/quiz/question2.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  PageController _pageController = PageController();
  int current_page = 0;
  int total_page = 8;
  bool valid = true;

  void _isValid(int page, bool isValid) {
    setState(() {
      current_page = page;
      valid = isValid;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (current_page < total_page - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
    setState(() {
      current_page++;
      valid = current_page == 0;
    });
  }

  void _prevPage() {
    if (current_page > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      setState(() {
        current_page--;
        valid = current_page == 0;
      });
    }
  }

  Widget buildProgress() {
    return LinearProgressIndicator(
      value: (current_page + 1) / total_page,
      backgroundColor: Colors.grey[300],
      minHeight: 6.0,
      color: Color.fromARGB(255, 2, 213, 62),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(255, 1, 69, 20);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap:
                        valid
                            ? () {
                              Navigator.pop(context);
                            }
                            : _prevPage,
                    child: Icon(Icons.arrow_back_ios, color: Colors.grey[600]),
                  ),
                  Center(
                    child: Text(
                      " ${current_page + 1} OUT OF 8",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontFamily: "My Font",
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _nextPage,
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: "My Font",
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              buildProgress(),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [Question1(), Question2()],
      ),
      bottomNavigationBar: SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10, 10.0, 60.0),
          child: Column(
            children: [
              Material(
                elevation: 0.0, // Controls shadow depth
                borderRadius: BorderRadius.circular(40), // Rounded edges
                color: Colors.transparent,
                child: Divider(height: 6, color: Colors.grey),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontFamily: "My Font",
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 1, 69, 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
