import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  GetStarted({super.key});
  //color schema
  Color primaryColor = const Color(0xFF043F2E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'lib/images/imgCow.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [
                  const Color.fromARGB(221, 10, 10, 10),
                  Colors.transparent,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //container one
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Text(
                        'Let’s grow together',
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight(800),
                          height: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                        bottom: 24,
                      ),
                      child: Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight(400),
                          height: 1.2,
                          color: Colors.grey[300],
                        ),
                        'From smarter breeding to better health, our app gives you the power to manage livestock with confidence.',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'sign up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight(600),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight(600),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //contianer two
              ],
            ),
          ),
        ],
      ),
    );
  }
}
