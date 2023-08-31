import 'package:flutter/material.dart';

void main() => runApp(PersonalityTestApp());

class PersonalityTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personalidade Test App',
      home: PersonalityTestScreen(),
    );
  }
}

class PersonalityTestScreen extends StatefulWidget {
  @override
  _PersonalityTestScreenState createState() => _PersonalityTestScreenState();
}

class _PersonalityTestScreenState extends State<PersonalityTestScreen> {
  int questionIndex = 0;
  int score = 0;

  final List<Map<String, dynamic>> questions = [
    {
      'questionText': 'Você prefere ficar em casa ou sair com amigos?',
      'answers': [
        {'text': 'Ficar em casa', 'score': 1},
        {'text': 'Sair com amigos', 'score': 2},
      ],
    },
    // Adicione mais perguntas aqui
  ];

  void _answerQuestion(int answerScore) {
    setState(() {
      score += answerScore;
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex < questions.length) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Personalidade Test'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex]['questionText'],
              style: TextStyle(fontSize: 18),
            ),
            ...(questions[questionIndex]['answers']
                    as List<Map<String, dynamic>>)
                .map((answer) {
              return ElevatedButton(
                onPressed: () => _answerQuestion(answer['score']),
                child: Text(answer['text']),
              );
            }).toList(),
          ],
        ),
      );
    } else {
      String resultText =
          score <= 4 ? 'Você é introvertido.' : 'Você é extrovertido.';
      return Scaffold(
        appBar: AppBar(
          title: Text('Resultado'),
        ),
        body: Center(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    }
  }
}
