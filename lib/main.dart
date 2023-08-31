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
                // Coloque aqui a navegação para a página inicial
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
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sobre');
              },
              child: Text('Ir para a Página "Sobre o teste"'),
            ),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/teste');
              },
              child: Text('Ir para a Página "Teste de 20 perguntas"'),
            ),
            SizedBox(height: 200),
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
        child: Text('Página sobre o teste'),
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
        child: Text('Página dos tipos de personalidade'),
      ),
    );
  }
}