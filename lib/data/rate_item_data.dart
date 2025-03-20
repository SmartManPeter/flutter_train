import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RateItemData {
  final int itemid;
  final String itemname;
  final List<Rate> rates;
  bool isGood;
  bool isBad;

  // constructor
  RateItemData({
    required this.itemid,
    required this.itemname,
    required this.rates,
    this.isGood = false,
    this.isBad = false,
  });

  // fromJson
  factory RateItemData.fromJson(Map<String, dynamic> json) {
    return RateItemData(
      itemid: json['id'],
      itemname: json['name'],
      rates: Rate.fromJsonList(json['rates']),
    );
  }
  // fromJsonList
  static List<RateItemData> fromJsonList(List<dynamic> list) {
    return list.map((e) => RateItemData.fromJson(e)).toList();
  }
}

class Rate {
  final String ratevalue;
  final String ratetext;
  bool rateselected;

  // constructor
  Rate({
    required this.ratevalue,
    required this.ratetext,
    required this.rateselected,
  });

  // fromJson
  factory Rate.fromJson(Map<String, dynamic> json) {
    return Rate(
      ratevalue: json['ratevalue'],
      ratetext: json['ratetext'],
      rateselected: false,
    );
  }
  // fromJsonList
  static List<Rate> fromJsonList(List<dynamic> list) {
    return list.map((e) => Rate.fromJson(e)).toList();
  }
}

class RateNotifier extends StateNotifier<List<RateItemData>> {
  RateNotifier() : super([]) {
    loadRates();
  }

  Future<void> loadRates() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/rate_item.json');
      final List<dynamic> jsonData = jsonDecode(jsonString);
      state = RateItemData.fromJsonList(jsonData);
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  void toggleGood(int itemId) {
    final item = state.firstWhere((item) => item.itemid == itemId);
    if (item.isBad) {
      for (var rate in item.rates) {
        rate.rateselected = false;
      }
    }
    item.isGood = true;
    item.isBad = false;
    state = List.from(state);
  }

  void toggleBad(int itemId) {
    final item = state.firstWhere((item) => item.itemid == itemId);
    if (item.isGood) {
      for (var rate in item.rates) {
        rate.rateselected = false;
      }
    }
    item.isGood = false;
    item.isBad = true;
    state = List.from(state);
  }

  void toggleRateSelection(int itemId, String rateValue) {
    final item = state.firstWhere((item) => item.itemid == itemId);
    final rate = item.rates.firstWhere((rate) => rate.ratevalue == rateValue);
    rate.rateselected = !rate.rateselected;
    state = List.from(state);
  }
}

final rateitemProvider = StateNotifierProvider<RateNotifier, List<RateItemData>>((ref) {
  return RateNotifier();
});
