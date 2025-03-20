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
  final TextEditingController _textController = TextEditingController();
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
    if (_currentRating != 5) {
      _textController.text = "";
    }
  }

  @override
  void dispose() {
    _textController.dispose(); // 釋放控制器
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        if (_currentRating == 5)
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100, // 固定高度
                decoration: BoxDecoration(
                  color: Colors.grey[200], // 背景顏色
                  borderRadius: BorderRadius.circular(10), // 圓角
                  border: Border.all(color: Colors.grey), // 邊框
                ),
                child: TextField(
                  controller: _textController, // 設定控制器
                  style: TextStyle(fontSize: 20),
                  maxLines: null, // 允許換行
                  keyboardType: TextInputType.multiline, // 允許多行輸入
                  decoration: InputDecoration(
                    hintText: "Share what you loved about your order.",
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: InputBorder.none, // 移除預設邊框
                  ),
                ),
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
    return SizedBox(
      width: 55,
      height: 60,
      child: IconButton(
        icon: Icon(
          filled ? Icons.star : Icons.star_border,
          color: Colors.amber,
          size: 50,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
