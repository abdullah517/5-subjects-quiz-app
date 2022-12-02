import 'package:flutter/material.dart';

class Mathslist {
  static List getlist() {
    var mylist = [
      {
        'question':
            "What is the Arithmetic Mean of the following data 3,6,9,12,15.",
        'answers': ['7', '9', '12', '8'],
        'score': 2,
        'correctanswer': '9'
      },
      {
        'question': "complete the series: 4.8.9.13.14.18._______?",
        'answers': ['22', '32', '11', '19'],
        'score': 2,
        'correctanswer': '19'
      },
      {
        'question': "What's the largest known Prime Number?",
        'answers': [
          ' 282,589,933-1',
          ' 282,589,933-3',
          ' None of these',
        ],
        'score': 3,
        'correctanswer': ' 282,589,933-1'
      },
      {
        'question':
            "Find two number whose sum is 28 and the difference is 4 _____________?",
        'answers': [
          '18,10',
          '12,16',
          '14,12',
        ],
        'score': 3,
        'correctanswer': '12,16'
      },
      {
        'question': "1 acre is equal to ________square foot?",
        'answers': [
          '45434 square foot',
          '34343 square foot',
          '43572 square foot',
          '43560 square foot',
        ],
        'score': 2,
        'correctanswer': '43560 square foot'
      },
    ];
    return mylist;
  }
}
