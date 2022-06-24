import 'package:flutter/material.dart';
import 'package:flutter_app_ui_2/size_config.dart';
import 'package:flutter_app_ui_2/template_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
          fontSize: TemplateConfig.gridCount == 2
              ? 1.6 * defaultSize
              : 1.2 * defaultSize,
          fontWeight: FontWeight.bold),
    );
  }
}
