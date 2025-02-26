import 'package:flutter/material.dart';

/*評分元件*/
class StarRating extends StatefulWidget {
  final int rating;
  final ValueChanged<int> onRatingChanged;
  const StarRating({
    super.key,
    required this.rating,
    required this.onRatingChanged,
  });

  @override
  StarRatingState createState() => StarRatingState();
}

class StarRatingState extends State<StarRating> {
  late int _currentRating;
  @override
  void initState() {
    super.initState();
    _currentRating = widget.rating;
  }

  void _onRatingChanged(int newRating) {
    setState(() {
      _currentRating = newRating;
    });
    widget.onRatingChanged(newRating);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int starIndex = 1; starIndex <= 5; starIndex++)
              Star(
                filled: starIndex <= _currentRating,
                onPressed: () => _onRatingChanged(starIndex),
              ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _currentRating == 0 ? "尚未評分" : "目前評分 ：$_currentRating",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ],
    );
  }
}

/*評分元件附屬-基礎星星元件*/
class Star extends StatelessWidget {
  final bool filled;
  final VoidCallback onPressed;
  const Star({
    super.key,
    required this.filled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        filled ? Icons.star : Icons.star_border,
        color: Colors.amber,
        size: 40,
      ),
      onPressed: onPressed,
    );
  }
}
