import 'package:flutter/material.dart';

class IconRoudnedBg extends StatelessWidget {
  final IconData icon;

  const IconRoudnedBg({
    Key? key,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
      child: Icon(icon, size: 30, color: Theme.of(context).primaryColor),
    );
  }
}
