import 'package:flutter/material.dart';

class AppoinmentRow extends StatelessWidget {
  AppoinmentRow({Key? key, required this.icon, required this.title, this.color})
      : super(key: key);
  IconData? icon;
  String title;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color ?? Colors.grey,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(title),
      ],
    );
  }
}
