import 'package:flutter/material.dart';

class WelcomeThree extends StatelessWidget {
  WelcomeThree({super.key});
  //color primary will create a theme later
  Color primaryColor = const Color(0xFF043F2E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Expanded(flex: 1, child: Text('this a place holder')),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    //dots
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          width: 8,
                          height: 8,
                        ),

                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          width: 8,
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 30,
                          height: 8,
                        ),
                      ],
                    ),
                    //new column
                    const SizedBox(height: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pay, Track, and Manage in One App",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight(800),
                            height: 0.9,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Book vet visits, schedule insemination, pay securely, and manage farm records with real-time updates.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight(400),
                          ),
                        ),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight(600),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
