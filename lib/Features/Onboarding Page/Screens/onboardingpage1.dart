import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'onboardingpage2.dart';

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      CupertinoIcons.back,
                      size: 28,
                      color: Color.fromARGB(255, 0, 89, 255),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      // Handle skip button press
                    },
                    padding: EdgeInsets.zero,
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 89, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  Image.asset(
                    'lib/components/magic-hands.png',
                    width: 300,
                  ),
                  // const SizedBox(height: 30),
                  const Text(
                    "Browse the menu",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const Text(
                    "and order directly from",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const Text(
                    "the app",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardPage2(),
                        ),
                      );
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 89, 255),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          CupertinoIcons.chevron_right,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
