import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Question {
  final String text;
  final List<String> options;

  Question(this.text, this.options);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentIndex = 0;

  List<Question> _questions = [
    Question('pergunta', ['R1', 'R2']),
    Question('pergunta', ['R1', 'R2']),
    // Adicione mais perguntas aqui
  ];

  void _selectOption(String option) {
    setState(() {
      // Salvar a opção selecionada ou fazer alguma lógica com ela
      print('Opção selecionada: $option');
    });
  }

  void _goToNextQuestion() {
    if (_currentIndex < _questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = _questions[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QuestionWidget(currentQuestion, _selectOption),
          ],
        ),
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  final Question question;
  final Function(String) onOptionSelected;

  QuestionWidget(this.question, this.onOptionSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Text(
            question.text,
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 60),
          Column(
            children: question.options.map((option) {
              return ElevatedButton(
                onPressed: () {
                  onOptionSelected(option);
                },
                child: Text(option),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
