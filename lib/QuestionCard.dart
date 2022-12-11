import 'package:flutter/material.dart';
import 'package:multiple_subjects_quiz_app/buttons.dart';

class QACARD extends StatelessWidget {
  Function getlistlength;
  List list1;
  int questionindex;
  var changeindex;
  var changeradiotext;
  var newlist;
  String text;
  String radiotext;
  bool makebtn;

  QACARD(
      {required this.getlistlength,
      required this.list1,
      required this.questionindex,
      this.radiotext = "",
      this.changeradiotext = null,
      this.changeindex = null,
      this.newlist = null,
      this.makebtn = false,
      this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 600,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: Colors.white),
      child: Column(
        children: [
          Container(
            height: 45,
            width: 600,
            decoration: BoxDecoration(color: Colors.indigoAccent),
            child: Text(
              "Question " + (questionindex + 1).toString(),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent),
            ),
          ),
          Text(
            list1[questionindex]['question'],
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent),
          ),
          for (int x = 0; x < getlistlength(questionindex); x++) ...[
            makebtn == true
                ? RadioListTile(
                    title: Text(list1[questionindex]['answers'][x]),
                    value: list1[questionindex]['answers'][x],
                    groupValue: radiotext,
                    onChanged: ((value) =>
                        changeradiotext(value, questionindex)))
                : RadioListTile(
                    title: Text(list1[questionindex]['answers'][x]),
                    value: list1[questionindex]['answers'][x],
                    groupValue: list1[questionindex]['answers'][x] ==
                            newlist[questionindex]
                        ? list1[questionindex]['answers'][x]
                        : '',
                    onChanged: null,
                  )
          ],
          makebtn == true
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(220, 0, 0, 0),
                  child: createbutton(func: changeindex, text: text),
                )
              : newlist[questionindex] == list1[questionindex]['correctanswer']
                  ? Text(
                      "Correct",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    )
                  : Text(
                      "Incorrect: The correct answer is " +
                          list1[questionindex]['correctanswer'],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
        ],
      ),
    );
  }
}
