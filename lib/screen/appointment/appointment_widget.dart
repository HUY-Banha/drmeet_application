import 'package:drmeet_application/screen/appointment/canceled_widget.dart';
import 'package:drmeet_application/screen/appointment/completed_widget.dart';
import 'package:drmeet_application/screen/appointment/upcomming_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppointmentWidget extends StatefulWidget {
  const AppointmentWidget({super.key});

  @override
  State<AppointmentWidget> createState() => _AppointmentWidgetState();
}

class _AppointmentWidgetState extends State<AppointmentWidget>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, top: 16, bottom: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Appointment",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: TabBar(
                controller: controller,
                tabs: const [
                  Tab(
                    text: "Upcomming",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                  Tab(
                    text: "Canceled",
                  )
                ],
                labelStyle: const TextStyle(color: Colors.white),
                indicator: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onTap: (value) {},
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: [Upcomming(), Completed(), Canceled()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
