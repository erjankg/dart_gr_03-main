import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackScreen(),
    );
  }
}

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Обратная связь'),
      ),
      body: Column(
        children: [
          Text(
            'Обратная связь',
            style: TextStyle(fontSize: 24),
          ),
          Text('Оставьте ваше мнение'),
          FeedbackForm(),
        ],
      ),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  String name = "";
  bool isSent = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) {
            name = value;
          },
          decoration: InputDecoration(
            labelText: 'Введите имя',
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isSent = true;
            });
          },
          child: Text('Отправить'),
        ),
        if (isSent)
          Text('Отправлено! Спасибо, $name'),
      ],
    );
  }
}