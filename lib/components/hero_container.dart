import 'package:flutter/material.dart';

class HeroContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttontext;
  final String heroimg;
  void Function()? onPressed;
  HeroContainer({
    super.key,
    required this.buttontext,
    required this.onPressed,
    required this.subtitle,
    required this.title,
    required this.heroimg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          //column
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(title),
                  Text(subtitle),
                  MaterialButton(
                    onPressed: onPressed,
                    elevation: 0,
                    child: Text(buttontext),
                  ),
                ],
              ),
            ),
          ),
          //image
          Expanded(child: Image.asset(heroimg)),
        ],
      ),
    );
  }
}
