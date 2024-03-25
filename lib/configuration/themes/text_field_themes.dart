import 'package:flutter/material.dart';

class TextFieldThemes {
  // Header
  static OutlineInputBorder headerEnabledBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    );
  }

  static OutlineInputBorder headerFocusedBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
    );
  }

  static OutlineInputBorder headerBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
    );
  }
}
