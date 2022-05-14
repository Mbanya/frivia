import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GamePageprovider extends ChangeNotifier {
  final Dio _dio = Dio();
  final int _maxQuestions = 10;

  List? questions;
  int _currentQuestionCount = 0;

  BuildContext context;
  GamePageprovider({required this.context}) {
    _dio.options.baseUrl = 'https://opentdb.com/api.php';
    _getQuestionsFromAPI();
  }

  Future<void> _getQuestionsFromAPI() async {
    var _response = await _dio.get(
      '',
      queryParameters: {
        'amount': 10,
        'type': 'boolean',
        'difficulty': 'easy',
      },
    );

    var _data = jsonDecode(
      _response.toString(),
    );
    questions = _data["questions"];
    notifyListeners();
  }

  String getCurrentQuestionText() {
    return questions![_currentQuestionCount]["question"];
  }
}
