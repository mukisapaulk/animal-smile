import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String title;
  final String shortDetail;
  final String providerImgURL;
  final String serviceProvidername;
  final String appointmentDate;
  const AppointmentCard({
    super.key,
    required this.title,
    required this.shortDetail,
    required this.providerImgURL,
    required this.serviceProvidername,
    required this.appointmentDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title),
          Text(shortDetail),
          Row(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(providerImgURL),
                  ),
                  Text(serviceProvidername),
                ],
              ),
              Text(appointmentDate),
            ],
          ),
        ],
      ),
    );
  }
}
