import 'package:flutter/material.dart';

class TerceiraPagina extends StatelessWidget {
  const TerceiraPagina ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Página 3"),
    ),
    body: Center(child: ElevatedButton(
      child: const Text("Voltar"),
      onPressed: () {
        Navigator.pop(context);
      }
      )
    )
   );
  }
}