import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:multiple_subjects_quiz_app/DSAQA.dart';
import 'package:multiple_subjects_quiz_app/EnglishQA.dart';
import 'package:multiple_subjects_quiz_app/MathQA.dart';
import 'package:multiple_subjects_quiz_app/OOPQA.dart';
import 'package:multiple_subjects_quiz_app/Quiz.dart';
import 'package:multiple_subjects_quiz_app/buttons.dart';
import 'package:multiple_subjects_quiz_app/c++QA.dart';

void main() {
  runApp(Phoenix(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  Homepage({super.key});

  void changescreen(String text, BuildContext context) {
    List mylist = [];
    if (text == "C++ Quiz") {
      mylist = [...Cpluspluslist.getlist()];
    } else if (text == "OOP Quiz") {
      mylist = [...OOPlist.getlist()];
    } else if (text == "DSA Quiz") {
      mylist = [...DSAlist.getlist()];
    } else if (text == "ENGLISH Quiz") {
      mylist = [...Englishlist.getlist()];
    } else {
      mylist = [...Mathslist.getlist()];
    }
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => QuizScreen(
                  mylist: mylist,
                  apptitle: text,
                )));
  }

  List quiznames = [
    "C++ Quiz",
    "OOP Quiz",
    "DSA Quiz",
    "ENGLISH Quiz",
    "MATHS Quiz"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuizApp"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [Icon(Icons.quiz)],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgk.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Text(
                      "Select Option",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 33, color: Colors.amber),
                    );
                  } else {
                    return createbutton(
                        func: changescreen, text: quiznames[index - 1]);
                  }
                },
                separatorBuilder: ((context, index) => SizedBox(
                      height: 20,
                    )),
                itemCount: quiznames.length + 1),
          ),
        ),
      ),
    );
  }
}
