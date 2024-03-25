import 'package:flutter/material.dart';

class HeaderMenuButton extends StatelessWidget {
  const HeaderMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 25,
          ),
        ),
      ),
    );
  }
}
