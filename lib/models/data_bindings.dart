import 'package:flutter/material.dart';

class ExchangeRateBinding extends ChangeNotifier {
  String from = '';
  String to = '';
  String rate = '';

  void updateData({
    required String from,
    required String to,
    required String rate,
  }) {
    this.from = from;
    this.to = to;
    this.rate = rate;
    notifyListeners();
  }
}
