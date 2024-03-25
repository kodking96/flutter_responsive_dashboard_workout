import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';

Widget buildDetails({required String key, required String value}) {
  return Column(
    children: [
      Text(key, style: TextThemes.summaryDetailsKeyStyle),
      Text(value, style: TextThemes.summaryDetailsValueStyle)
    ],
  );
}
