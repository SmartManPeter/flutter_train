import 'package:flutter/material.dart';
import 'package:homework1/widgets/star_rating.dart';

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
        child: StarRating(
          rating: 0,
          onRatingChanged: (rating) {
            print('評分事件觸發，評分為: $rating');
          },
        ),
      ),
    ));
  }
}
