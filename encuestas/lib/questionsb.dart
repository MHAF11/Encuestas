import 'package:flutter/material.dart';

class QuestionsbPage extends StatelessWidget {
  final Function(int) onPageChange;

  const QuestionsbPage({super.key, required this.onPageChange});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Preguntas 2',
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
              onPressed: () => onPageChange(4), child: Text('Resumen'))
        ],
      ),
    );
  }
}
