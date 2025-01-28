import 'package:encuestas/dashboard.dart';
import 'package:encuestas/questionsa.dart';
import 'package:encuestas/questionsb.dart';
import 'package:encuestas/summary.dart';
import 'package:encuestas/survey.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _title = _titles[0];

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = [
      DashboardPage(),
      SurveyPage(onPageChange: _pageChange),
      QuestionsaPage(onPageChange: _pageChange),
      QuestionsbPage(onPageChange: _pageChange),
      SummaryPage(onPageChange: _pageChange),
    ];
  }

  static const List<String> _titles = <String>[
    'Inicio',
    'Nueva Encuesta',
    'Preguntas',
    'Preguntas (cont)',
    'Resumen',
  ];

  void _pageChange(int index) {
    setState(() {
      _selectedIndex = index;
      _title = _titles[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_title),
      ),
      body: _pages.elementAt(_selectedIndex),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () => _pageChange(1),
              tooltip: 'Nueva Encuesta',
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
