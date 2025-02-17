import 'package:flutter/material.dart';
import 'package:homework1/widgets/taiwan_time.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("過去時間比對現在"),
            TaiwanTime(
              time: DateTime.now()
                  .add(Duration(days: -8))
                  .add(Duration(seconds: 5)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now().add(Duration(days: -5)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now().add(Duration(hours: -6)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now().add(Duration(minutes: -30)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now().add(Duration(minutes: -4)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            Text("\n現在時間"),
            TaiwanTime(
              time: DateTime.now(),
              showFuzzy: false,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            Text("\n未來時間比對現在"),
            TaiwanTime(
              time: DateTime.now()
                  .add(Duration(minutes: 4))
                  .add(Duration(seconds: 5)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now()
                  .add(Duration(minutes: 30))
                  .add(Duration(seconds: 5)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now()
                  .add(Duration(hours: 6))
                  .add(Duration(seconds: 5)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now()
                  .add(Duration(days: 5))
                  .add(Duration(seconds: 5)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            TaiwanTime(
              time: DateTime.now()
                  .add(Duration(days: 8))
                  .add(Duration(seconds: 5)),
              showFuzzy: true,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
