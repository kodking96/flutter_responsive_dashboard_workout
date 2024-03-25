import 'package:flutter/material.dart';

class HeaderPrefix extends StatelessWidget {
  const HeaderPrefix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.search,
      color: Colors.grey,
      size: 21,
    );
  }
}
