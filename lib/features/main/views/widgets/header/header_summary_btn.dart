import 'package:flutter/material.dart';

class HeaderSummaryBtn extends StatelessWidget {
  const HeaderSummaryBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Scaffold.of(context).openEndDrawer(),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset(
          "assets/images/avatar.png",
          width: 32,
        ),
      ),
    );
  }
}
