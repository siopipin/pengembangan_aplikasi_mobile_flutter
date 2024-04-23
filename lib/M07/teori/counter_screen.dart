import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hitung: $_counter'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
              print(_counter++);
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
