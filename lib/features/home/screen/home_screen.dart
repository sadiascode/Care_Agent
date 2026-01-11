import 'package:care_agent/features/home/screen/chat_screen.dart';
import 'package:care_agent/features/home/widgets/action_input_bar_widget.dart';
import 'package:care_agent/features/home/widgets/appointment_cart_widget.dart';
import 'package:care_agent/features/home/widgets/calendar_widget.dart';
import 'package:care_agent/features/home/widgets/dynamic_date_header_widget.dart';
import 'package:care_agent/features/home/widgets/medicine_card_widget.dart';
import 'package:care_agent/features/home/widgets/time_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFAF7),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: SvgPicture.asset(
            'assets/lo.svg',
            height: 39,
          ),
        ),

      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const DynamicDateHeaderWidget(),
            const SizedBox(height: 15),
            const CalendarWidget(),
            const SizedBox(height: 30),
            const Text(
              "Today's Medicine",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const TimeHeader(svgPath: 'assets/morning.svg', title: "Morning"),
            const MedicineCard(
              time: "08:00 AM",
              name: "Bisocor Tablet 2.5mg",
              dosage: "1 tablet",
            ),
            const MedicineCard(
              time: "08:00 AM",
              name: "Bisocor Tablet 2.5mg",
              dosage: "1 tablet",
            ),

            const TimeHeader(svgPath: 'assets/noon.svg', title: "Afternoon"),
            const MedicineCard(
              time: "02:00 PM",
              name: "Bisocor Tablet 2.5mg",
              dosage: "1 tablet",
            ),

            const TimeHeader(svgPath: 'assets/sunset.svg', title: "Evening"),
            const MedicineCard(
              time: "08:00 PM",
              name: "Bisocor Tablet 2.5mg",
              dosage: "1 tablet",
            ),
            const MedicineCard(
              time: "08:00 PM",
              name: "Bisocor Tablet 2.5mg",
              dosage: "1 tablet",
            ),

            const SizedBox(height: 20),
            const Text(
              "Today's Appointments",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const AppointmentCartWidget(),
            const SizedBox(height: 25),
            const Text(
              "Add prescription/appointment",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
             ActionInputBarWidget(onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (_) => const ChatScreen()),
               );
             }),
            const SizedBox(height: 30),
          ],
        ),
      ),
        ),
    );
  }
}
