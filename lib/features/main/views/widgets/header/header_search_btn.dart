import 'package:flutter/material.dart';

class HeaderSearchBtn extends StatelessWidget {
  const HeaderSearchBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.search,
        color: Colors.grey,
        size: 25,
      ),
      onPressed: () {},
    );
  }
}
