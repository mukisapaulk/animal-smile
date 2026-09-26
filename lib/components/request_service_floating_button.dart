import 'package:flutter/material.dart';

class RequestServiceFloatingButton extends StatefulWidget {
  const RequestServiceFloatingButton({super.key});

  @override
  State<RequestServiceFloatingButton> createState() =>
      _RequestServiceFloatingButtonState();
}

class _RequestServiceFloatingButtonState
    extends State<RequestServiceFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('request service'),
      ),
    );
  }
}
