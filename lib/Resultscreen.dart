import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:multiple_subjects_quiz_app/QuestionCard.dart';
import 'package:multiple_subjects_quiz_app/buttons.dart';
import 'Quiz.dart';

class Result extends StatelessWidget {
  Function getlistlength;
  List list1;
  var newlist;
  int totalscore;
  var comment, title;
  Result(
      {required this.getlistlength,
      required this.list1,
      required this.newlist,
      required this.totalscore,
      required this.comment,
      required this.title});

  void resetchanges(String text, BuildContext context) {
    if (text == "Retake Quiz") {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => QuizScreen(
                    mylist: list1,
                    apptitle: title,
                  )));
    } else {
      Phoenix.rebirth(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
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
          width: MediaQuery.of(context).size.width * .9,
          height: double.infinity,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(), // new

            children: [
              Text(
                "Quiz Result: " + totalscore.toString() + " out of 12",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent),
              ),
              Text(
                comment,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent),
              ),
              Divider(
                height: 50,
                thickness: 20,
                color: Colors.red,
              ),
              for (int index = 0; index < list1.length; index++) ...[
                QACARD(
                  getlistlength: getlistlength,
                  list1: list1,
                  questionindex: index,
                  newlist: newlist,
                ),
                Divider(
                  height: 50,
                  thickness: 20,
                  color: Colors.red,
                )
              ],
              createbutton(func: resetchanges, text: "Retake Quiz"),
              Divider(
                height: 50,
                thickness: 20,
                color: Colors.red,
              ),
              createbutton(func: resetchanges, text: "Back to MainMenu"),
            ],
          ),
        )),
      ),
    );
  }
}
