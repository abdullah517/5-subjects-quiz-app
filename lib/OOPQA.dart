import 'package:flutter/material.dart';

class OOPlist {
  static List getlist() {
    var mylist = [
      {
        'question': "Which of the following is not an OOPS concept?",
        'answers': [
          'Encapsulation',
          'Polymorphism',
          'Exception',
          'Abstraction'
        ],
        'score': 2,
        'correctanswer': 'Exception'
      },
      {
        'question': "Which feature of OOPS described the reusability of code?",
        'answers': [
          'Abstraction',
          'Encapsulation',
          'Polymorphism',
          'Inheritance'
        ],
        'score': 2,
        'correctanswer': 'Inheritance'
      },
      {
        'question':
            "Which operator from the following can be used to illustrate the feature of polymorphism?",
        'answers': [
          'Overloading <<',
          'Overloading &&',
          'Overloading +=',
        ],
        'score': 3,
        'correctanswer': 'Overloading <<'
      },
      {
        'question':
            "Which among the following cannot be used for the concept of polymorphism?",
        'answers': [
          'Member function overloading',
          'Constructor Overloading',
          'Static member function',
        ],
        'score': 3,
        'correctanswer': 'Static member function'
      },
      {
        'question':
            "What is the extra feature in classes which was not in the structures?",
        'answers': [
          'Member functions',
          'Data members',
          'Public access specifier',
          'Static Data allowed',
        ],
        'score': 2,
        'correctanswer': 'Member functions'
      },
    ];
    return mylist;
  }
}
