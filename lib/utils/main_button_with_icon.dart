import 'package:flutter/material.dart';

class MainButtonWithIcon extends StatelessWidget {
  void Function()? onTap;
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;
  MainButtonWithIcon({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor,
        ),
        child: Row(
          spacing: 6,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight(800),
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
