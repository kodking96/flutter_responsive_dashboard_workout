import 'package:flutter/material.dart';

class TextThemes {
  // Side Menu Text Style
  static const menuEntryTextTheme = TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );

  static TextStyle getMenuEntryTextStyle({
    required Color color,
    required FontWeight fontWeight,
  }) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: fontWeight,
    );
  }

  //Dashboard
  //----------------------------------------------------------------
  //Activity Card

  static const detailsCardValueStyle = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const detailsCardTitleStyle = TextStyle(
    fontSize: 13,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );

  // Chart Title
  static const chartTitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle getPieChartStyle(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          height: 0.5,
        );
  }

  // Summary
  static const summaryTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const summaryDetailsKeyStyle = TextStyle(
    fontSize: 11,
    color: Colors.grey,
  );
  static const summaryDetailsValueStyle = TextStyle(
    fontSize: 14,
  );
  static const scheduledTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const scheduledTaskStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const scheduledTitleStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const scheduledDateStyle = TextStyle(
    fontSize: 12,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
}
