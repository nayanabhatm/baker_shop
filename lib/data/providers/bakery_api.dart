import 'dart:convert';

import 'package:flutter/services.dart';

class BakeryApiClient {
  Future<dynamic> getBakeryData() async {
    try {
      final String response =
          await rootBundle.loadString('assets/json/bakery_data.json');
      await Future.delayed(const Duration(seconds: 1));
      final Map<String, dynamic> data = json.decode(response);
      return data;
    } catch (e) {
      throw e.toString();
    }
  }
}
