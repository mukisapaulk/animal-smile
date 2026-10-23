import 'package:animal_smile/components/appointment_card.dart';
import 'package:flutter/material.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  List appointments = [
    [
      "veterinary check up",
      "Routine herd health inspection",
      "lib/images/profile1.jpg",
      "Dr. Brian L.",
      "10-20-2026 10:30am",
    ],
    [
      "nutrition consultation",
      "AI service for 3 cows (IDs #204, #317, #221)",
      "lib/images/profile2.jpg",
      "Dr. Milly m.",
      "10-20-2026 10:30am",
    ],
    [
      "artifical insemination",
      "Routine herd health inspection",
      "lib/images/profile3.jpg",
      "Dr. Paul K.",
      "10-20-2026 10:30am",
    ],
    [
      "follow up visit",
      "Check pregnancy confirmation after AI",
      "lib/images/profile4.jpg",
      "Dr. Nakungu L.",
      "10-20-2026 10:30am",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // app bar
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Appointments"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SearchBar(
              hintText: "search",
              elevation: WidgetStatePropertyAll(0),
              leading: Icon(Icons.search),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(children: [Icon(Icons.filter), Text("filter")]),
                ),
                Container(
                  child: Row(children: [Icon(Icons.sort), Text("sorting")]),
                ),
              ],
            ),
            // APPOINTMENT CARDS
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: appointments.length,
                itemBuilder: (context, index) => AppointmentCard(
                  title: appointments[index][0],
                  shortDetail: appointments[index][1],
                  providerImgURL: appointments[index][2],
                  serviceProvidername: appointments[index][3],
                  appointmentDate: appointments[index][4],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
