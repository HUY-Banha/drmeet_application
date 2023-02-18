import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Specialist {
  final String title;
  IconData? icon;

  Specialist({required this.icon, required this.title});

  static List<Specialist> specialList = <Specialist>[
    Specialist(icon: Icons.people, title: "General"),
    Specialist(icon: Icons.dock, title: "Dentist"),
    Specialist(icon: Icons.elderly, title: "General"),
    Specialist(icon: Icons.dns_sharp, title: "General"),
    Specialist(icon: Icons.dashboard, title: "General"),
    Specialist(icon: Icons.baby_changing_station, title: "General"),
    Specialist(icon: Icons.holiday_village, title: "General"),
    Specialist(icon: Icons.back_hand, title: "General"),
  ];
}
