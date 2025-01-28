import 'package:flutter/material.dart';

class QuestionsaPage extends StatefulWidget {
  final Function(int) onPageChange;
  const QuestionsaPage({super.key, required this.onPageChange});

  @override
  State<QuestionsaPage> createState() => _QuestionsaPageState();
}

class _QuestionsaPageState extends State<QuestionsaPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Escribe tu nombre'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Favor de llenar este campo';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration:
                  const InputDecoration(hintText: 'Escribe tu telefono'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Favor de llenar este campo';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Escribe tu correo'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Favor de llenar este campo';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration:
                  const InputDecoration(hintText: 'Escribe tu matricula'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Favor de llenar este campo';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Escribe tu edad'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Favor de llenar este campo';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
              //onPressed: () => onPageChange(3),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  //Procesariamos el dato
                }
              },
              child: Text('Continuar')),
        ],
      ),
    );
  }
}
