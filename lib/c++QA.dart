import 'package:flutter/material.dart';

class Cpluspluslist {
  static List getlist() {
    var mylist = [
      {
        'question': "Which of the following is the address operator?",
        'answers': ['@', '#', '&', '%'],
        'score': 2,
        'correctanswer': '&',
      },
      {
        'question':
            "Which of the following is the correct syntax for declaring the array?",
        'answers': [
          'init array []',
          'int array [5];',
          'Array[5];',
          'None of the above'
        ],
        'score': 3,
        'correctanswer': 'int array [5];',
      },
      {
        'question':
            'Which of the following is the correct syntax for printing the address of the first element?',
        'answers': ['array[0];', 'array[1];', 'array[2];', 'None of the above'],
        'score': 3,
        'correctanswer': 'array[0];',
      },
      {
        'question':
            'Which type of memory is used by an Array in C++ programming language?',
        'answers': ['Contiguous', 'None-contiguous', 'Both A and B'],
        'score': 2,
        'correctanswer': 'Contiguous',
      },
      {
        'question':
            "Which of the following is the correct syntax to read the single character to console in the C++ language?",
        'answers': ['Read ch()', 'get(ch)', 'Scanf(ch)'],
        'score': 2,
        'correctanswer': 'get(ch)',
      },
    ];
    return mylist;
  }
}
