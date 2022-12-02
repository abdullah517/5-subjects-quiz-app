import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:multiple_subjects_quiz_app/QuestionCard.dart';
import 'package:multiple_subjects_quiz_app/Resultscreen.dart';
import 'package:multiple_subjects_quiz_app/buttons.dart';

class QuizScreen extends StatefulWidget {
  List mylist;
  String apptitle;
  QuizScreen({required this.mylist, required this.apptitle});

  @override
  State<QuizScreen> createState() =>
      _QuizScreenState(list1: mylist, apptitle: apptitle);
}

class _QuizScreenState extends State<QuizScreen> {
  int questionindex = 0;
  String radiotext = "";
  List list1;
  String apptitle;
  String btntext = "Next";
  List newlist = new List.filled(5, null, growable: false);
  bool iscorrectanswer = false;
  int totalscore = 0;
  var comment = "";
  _QuizScreenState({required this.list1, required this.apptitle});

  int getlistlength(int i) {
    List mylist1 = [...list1[i]['answers']];
    return mylist1.length;
  }

  void Back(String text, BuildContext context) {
    Phoenix.rebirth(context);
  }

  void setcomment(int score) {
    var percentage = (score / 12) * 100;
    if (percentage >= 50 && percentage <= 60)
      comment = "Passed";
    else if (percentage > 60 && percentage < 80)
      comment = "Welldone";
    else if (percentage >= 80 && percentage <= 100)
      comment = "You are Genius";
    else
      comment = "Fail";
  }

  void changeradiotext(String text, int ind) {
    setState(() {
      radiotext = text;
      newlist[ind] = text;
    });
    if (text == list1[ind]['correctanswer'])
      iscorrectanswer = true;
    else
      iscorrectanswer = false;
  }

  void changeindex(String text, BuildContext context) {
    if (iscorrectanswer == true) {
      int score = list1[questionindex]['score'];
      totalscore += score;
    }
    if (questionindex < 4) {
      setState(() {
        questionindex = questionindex + 1;
        radiotext = "";
        if (questionindex == 4) btntext = "Submit";
      });
    } else {
      if (btntext == "Submit") {
        setcomment(totalscore);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Result(
                getlistlength: getlistlength,
                list1: list1,
                newlist: newlist,
                totalscore: totalscore,
                comment: comment,
                title: apptitle,
              ),
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(apptitle),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QACARD(
                getlistlength: getlistlength,
                list1: list1,
                questionindex: questionindex,
                changeindex: changeindex,
                makebtn: true,
                text: btntext,
                radiotext: radiotext,
                changeradiotext: changeradiotext,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: createbutton(
                  func: Back,
                  text: "Main Menu",
                  btnwidth: 160.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
