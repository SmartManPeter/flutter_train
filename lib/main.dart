import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(defaultCount: 0),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  final int defaultCount;
  //final Function({int Values}) TestFuns;
  const Counter({super.key, required this.defaultCount});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int Count = 0;

  @override
  void initState() {
    Count = widget.defaultCount;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Count.toString(),
          style: TextStyle(fontSize: 64),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  Count++;
                });
              },
              icon: Icon(
                Icons.add,
                size: 64,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  Count--;
                });
              },
              icon: Icon(
                Icons.remove,
                size: 64,
              ),
            )
          ],
        )
      ],
    );
  }
}
