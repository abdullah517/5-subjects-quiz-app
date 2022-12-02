import 'package:flutter/material.dart';

class DSAlist {
  static List getlist() {
    var mylist = [
      {
        'question':
            'Which one of the following is an application of Stack Data Structure?',
        'answers': [
          'Managing function calls',
          'The stock span problem',
          'Arithmetic expression evaluation',
          'All of the above'
        ],
        'score': 2,
        'correctanswer': 'All of the above'
      },
      {
        'question':
            "Which data structure is required to convert the infix to prefix notation?",
        'answers': ['Stack', 'Linked list', 'Binary tree', 'Queue'],
        'score': 3,
        'correctanswer': 'Stack'
      },
      {
        'question': "Which of the following is the infix expression?",
        'answers': ['A+B*C', '+A*BC', 'ABC+*'],
        'score': 3,
        'correctanswer': 'A+B*C'
      },
      {
        'question': "Which of the following is the prefix form of A+B*C?",
        'answers': ['A+(BC*)', '+AB*C', 'ABC+*', '+A*BC'],
        'score': 2,
        'correctanswer': '+A*BC'
      },
      {
        'question':
            "The minimum number of stacks required to implement a stack is __",
        'answers': ['1', '2', '3'],
        'score': 2,
        'correctanswer': '2'
      },
    ];
    return mylist;
  }
}
