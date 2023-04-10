import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> list = List.generate(20, (index) => 'Index $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        color: Colors.grey[300],
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text('Título da Coluna'),
                  Container(
                    color: Colors.green,
                    child: Column(
                      children: list.map((e) => Text(e)).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text('Título da Coluna'),
                  Container(
                    color: Colors.blue,
                    child: const Text('Conteúdo da coluna... '),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text('Título da Coluna'),
                  Container(
                    color: Colors.orange,
                    child: const Text('Conteúdo da coluna... Conteúdo da coluna... Conteúdo da coluna... '),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
