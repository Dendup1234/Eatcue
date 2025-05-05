import 'package:flutter/material.dart';
import 'package:note_app/listview/Quiz_card_list.dart';

Widget Question1() {
  final PageController _pageController = PageController();
  int _active_page = 0;

  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
    child: Container(
      child: Column(
        children: [
          Center(
            child: Text(
              "GOALS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontFamily: "My Font",
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "What brought you to Eatcue?",
              style: TextStyle(fontSize: 40, fontFamily: "My Font"),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Select all that apply",
            style: TextStyle(color: const Color.fromARGB(255, 134, 134, 134)),
          ),
          SizedBox(height: 20),
          Text(
            "I'm looking to...",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}
