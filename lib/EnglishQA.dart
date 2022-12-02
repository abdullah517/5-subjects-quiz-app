import 'package:flutter/material.dart';

class Englishlist {
  static List getlist() {
    var mylist = [
      {
        'question': "Alice is _______ at the flowers in the garden.",
        'answers': ['Seeing', 'Looking', 'Watching', 'Washing'],
        'score': 2,
        'correctanswer': 'Looking'
      },
      {
        'question': "What is the synonym of Anxiety?",
        'answers': ['to be dipressed', 'Angry', 'Worried', 'None of these'],
        'score': 2,
        'correctanswer': 'Worried'
      },
      {
        'question': "We suffered ________ your neglect.",
        'answers': [
          'From',
          'To',
          'Of',
        ],
        'score': 3,
        'correctanswer': 'From'
      },
      {
        'question': "The river flows ________ the bridge.",
        'answers': [
          'Under',
          'Along',
          'On',
        ],
        'score': 3,
        'correctanswer': 'Under'
      },
      {
        'question': "Choose the correct spelling from the following?",
        'answers': [
          'Etiquite',
          'Etiquette',
          'Etikuit',
          'None of These',
        ],
        'score': 2,
        'correctanswer': 'Etiquette'
      },
    ];
    return mylist;
  }
}
