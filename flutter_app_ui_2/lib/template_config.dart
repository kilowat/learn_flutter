import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class TemplateConfig {
  static late int gridCount;
  static late Color appBarColor;
  static late Color appBarTextColor;
  static late bool statusBarIsDark;
  Future<void> init() async {
    gridCount = 2;
    appBarColor = Colors.white;
    appBarTextColor = Colors.black;
    statusBarIsDark = true;
    final url = Uri.parse('https://tcvector.com/m_test/config.php');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      try {
        final jsonResult = json.decode(response.body);
        gridCount = jsonResult['gridCount'] as int;
        appBarColor = HexColor.fromHex(jsonResult['appBarColor'] as String);
        print(jsonResult['appBarTextColor']);
        appBarTextColor =
            HexColor.fromHex(jsonResult['appBarTextColor'] as String);
        statusBarIsDark = jsonResult['statusBarIsDark'] as bool;
      } catch (e) {
        print(e);
      }
    }
  }
}
