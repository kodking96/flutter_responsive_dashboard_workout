import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header/header_menu_btn.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header/header_search_btn.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header/header_summary_btn.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header/header_text_field.dart';
import 'package:responsive_dashboard/util/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context)) const HeaderMenuButton(),
        if (!Responsive.isMobile(context)) const HeaderTextField(),
        if (Responsive.isMobile(context))
          const Row(
            children: [
              HeaderSearchBtn(),
              HeaderSummaryBtn(),
            ],
          )
      ],
    );
  }
}
