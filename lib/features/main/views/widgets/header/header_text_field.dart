import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/configuration/themes/text_field_themes.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header/header_prefix.dart';

class HeaderTextField extends StatelessWidget {
  const HeaderTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppThemeConstants.cardBackgroundColor,
          enabledBorder: TextFieldThemes.headerEnabledBorder(),
          border: TextFieldThemes.headerBorder(),
          focusedBorder: TextFieldThemes.headerFocusedBorder(context),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: "Search",
          prefixIcon: const HeaderPrefix(),
        ),
      ),
    );
  }
}
