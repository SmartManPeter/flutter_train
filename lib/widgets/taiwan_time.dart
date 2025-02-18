import 'package:flutter/material.dart';
import 'package:homework1/main.dart';
import 'package:intl/intl.dart';

class TaiwanTime extends StatelessWidget {
  final DateTime time;
  final bool showFuzzy;
  final TextStyle? style;
  const TaiwanTime({super.key, required this.time, this.showFuzzy = false, this.style});

  @override
  Widget build(BuildContext context) {
    //print("TimeNow：${DateFormat("yyyy/MM/dd HH:mm:ss").format(widget.time)}、${widget.showFuzzy}");

    return Column(
      children: [
        Text(
          formatTaiwanDateTime(time, showFuzzy),
          style: style ?? TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}

String formatTaiwanDateTime(DateTime time, bool showFuzzy) {
  //年月日時分
  int year = time.year - 1911;
  int month = time.month;
  int day = time.day;
  int hour = time.hour;
  int minute = time.minute;

  //時間區段分類
  String period;
  int transformHour = hour;
  if (hour >= 0 && hour < 6) {
    period = "凌晨";
  } else if (hour >= 6 && hour < 12) {
    period = "早上";
  } else if (hour >= 12 && hour < 18) {
    period = "下午";
    if (hour > 12) transformHour -= 12; // 12:00 以上轉換
  } else {
    period = "晚上";
    if (hour > 12) transformHour -= 12; // 12:00 以上轉換
  }

  //模糊時間
  String fuzzyStr = "";
  if (showFuzzy) {
    Duration difference = time.difference(DateTime.now());
    int diffMinutes = difference.inMinutes;
    int diffHours = difference.inHours;
    int diffDays = difference.inDays;

    if (difference.inMinutes.abs() < 5) {
      fuzzyStr = diffMinutes < 0 ? "即將發生" : "剛剛";
    } else if (difference.inHours.abs() < 1) {
      fuzzyStr = diffMinutes < 0 ? "${diffMinutes.abs()}分鐘後" : "${diffMinutes.abs()}分鐘前";
    } else if (difference.inDays.abs() < 1) {
      fuzzyStr = diffHours < 0 ? "${diffHours.abs()}小時後" : "${diffHours.abs()}小時前";
    } else if (difference.inDays.abs() < 7) {
      fuzzyStr = diffDays < 0 ? "${diffDays.abs()}天後" : "${diffDays.abs()}天前";
    } else {
      fuzzyStr = ""; // 超過一週不顯示
    }

    //print("總天：$diffDays、總時：$diffHours、總分：$diffMinutes、文字：$fuzzyStr");
  }

  return "民國$year年$month月$day日 $period$transformHour點${minute.toString().padLeft(2, '0')}分${isNullOrEmpty(fuzzyStr) ? "" : " ($fuzzyStr)"}";
}

bool isNullOrEmpty(String? text) {
  return text == null || text.isEmpty;
}
