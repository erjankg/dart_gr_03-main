import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();

  double result = 0;

  double get a => double.tryParse(c1.text) ?? 0;
  double get b => double.tryParse(c2.text) ?? 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Калькулятор")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextField(
            controller: c1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Первое число"),
          ),

          TextField(
            controller: c2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Второе число"),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = a + b;
                  });
                },
                child: Text("+"),
              ),

              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = a - b;
                  });
                },
                child: Text("-"),
              ),

              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = a * b;
                  });
                },
                child: Text("×"),
              ),

              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (b == 0) {
                      result = 0;
                    } else {
                      result = a / b;
                    }
                  });
                },
                child: Text("÷"),
              ),
            ],
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              setState(() {
                c1.clear();
                c2.clear();
                result = 0;
              });
            },
            child: Text("Сброс"),
          ),

          SizedBox(height: 20),

          Text("Результат: $result", style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}