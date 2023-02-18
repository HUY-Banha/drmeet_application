import 'package:drmeet_application/widgets/appointment_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Upcomming extends StatefulWidget {
  const Upcomming({super.key});

  @override
  State<Upcomming> createState() => _UpcommingState();
}

class _UpcommingState extends State<Upcomming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: Colors.black.withOpacity(0.25),
                  )
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Patient : Sok Dara",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Dr. Heng Veasna",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Pediatrician",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Problem: Pediatric",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const Text(
                  "Location: Phnom Penh Thmey",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppoinmentRow(
                        icon: CupertinoIcons.calendar,
                        title: "12/03/2023",
                      ),
                      AppoinmentRow(
                        icon: CupertinoIcons.clock,
                        title: "10:30 AM",
                      ),
                      AppoinmentRow(
                        icon: CupertinoIcons.circle_fill,
                        color: Colors.red,
                        title: "Confirm",
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.5,
                          MediaQuery.of(context).size.height * 0.06),
                      backgroundColor: Colors.red.shade900,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Cencel"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
