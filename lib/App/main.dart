import 'package:aula17/App/tela4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CenteredImageScreen(),
      routes: {
        '/second': (context) => SecondPage(),
        '/sobre': (context) => SobrePage(),
        '/teste': (context) => TestePage(),
        '/tipos': (context) => TiposPage(),
      },
    );
  }
}

//logo do aplicativo (primeira tela)
class CenteredImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personality Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            // botao para iniciar o app
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}

//segunda pagina
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home), // Ícone "home"
              onPressed: () {
                //navegação para a página inicial
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
            SizedBox(width: 8), // Espaço entre o ícone e o texto
            Text('personality test'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sobre');
              },
              child: Text('Ir para a Página "Sobre o teste"'),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/teste');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              child: Text('Ir para a Página "Teste de 20 perguntas"'),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tipos');
              },
              child: Text('Ir para a Página "Tipos de personalidade"'),
            ),
          ],
        ),
      ),
    );
  }
}

//navegacao das paginas
class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sobre o teste')),
      body: Center(
        child: Text(
            'Este teste foi feito com o intuito de fazer voce descobrir a sua personalidade. Ajunda com suas coisas pessoais do dia a dia. Feito por Marcella e Giulia'),
      ),
    );
  }
}

class TestePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teste de 20 perguntas')),
      body: Center(
        child: Text('Página do teste de 20 perguntas'),
      ),
    );
  }
}

class TiposPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tipos de personalidade')),
      body: Center(
        child: Text(
            'Reservada: o indivíduo reservado é emocionalmente estável, mas não tem abertura ou neuroticismo. Não é extrovertido, mas é agradável e consistente. Pessoas exemplares pontuam baixo em neuroticismo e alto em todas as outras características. Exemplar: pessoas exemplares pontuam baixo relativamente ao neuroticismo e alto em todas as outras características. Há mais mulheres nesta categoria. A probabilidade de alguém ser exemplar aumenta com a idade. "São pessoas confiáveis e abertas a novas ideias". personalidades de mediador sao verdadeiros idealistas procurando o melhor mesmo nas piores pessoas e eventos, procurando um jeito de melhorar as coisas. Enquanto eles podem ser vistos como calmos, reservados, ou mesmo tímidos, mediadores têm uma chama interior e uma paixão que pode realmente brilhar.Autocentrica: a pessoa age com verdade expressa os seus sentimentos e opiniões sem temer retaliação. Ela não possui segundas intenções, e quando quer alguma coisa, expressa a sua vontade para que não haja desentendimentos futuros. A pessoa autêntica é livre de segredos.'),
      ),
    );
  }
}
