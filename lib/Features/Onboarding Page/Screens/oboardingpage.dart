import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _pages = [
    const OnboardPage1(),
    const OnboardPage2(),
    const OnboardPage3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  onPressed: () {
                    if (_pageController.page != 0) {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
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
                    if (_pageController.page != _pages.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
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
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _pages,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Image.asset(
            'lib/components/magic-hands.png',
            width: 300,
          ),
          //const SizedBox(height: 20),
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
    );
  }
}

class OnboardPage2 extends StatelessWidget {
  const OnboardPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 105),
          Image.asset(
            'lib/components/scooter.png',
            width: 300,
          ),
          const SizedBox(height: 35),
          const Text(
            "Your order will be",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "immediately collected and",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "sent by our courier",
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
    );
  }
}

class OnboardPage3 extends StatelessWidget {
  const OnboardPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 125),
          Image.asset(
            'lib/components/package.png',
            width: 300,
          ),
          const SizedBox(height: 20),
          const Text(
            "Pick up delivery",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "at your door and enjoy",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "the package",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(height: 55),
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
    );
  }
}
*/
//currently works best
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _pages = [
    const OnboardPage1(),
    const OnboardPage2(),
    const OnboardPage3(),
  ];
  double currentPage = 0; // Track the current page for progress indicator

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  onPressed: () {
                    if (_pageController.page != 0) {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
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
                    if (_pageController.page != _pages.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  padding: EdgeInsets.zero,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Visibility(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 0, 89, 255),
                          ),
                        ),
                      ),
                      if (currentPage != 3) // Show progress indicator
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            value: currentPage / 3,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Color.fromARGB(255, 0, 89, 255),
                            ),
                            strokeWidth: 2,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _pages,
                onPageChanged: (int page) {
                  setState(() {
                    currentPage = page.toDouble();
                  });
                },
              ),
            ),
            //const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (_pageController.page != _pages.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
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
            )
          ],
        ),
      ),
    );
  }
}

class OnboardPage4 extends StatelessWidget {
  const OnboardPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Image.asset(
            'lib/components/rexa.png',
            width: 300,
          ),
          const SizedBox(height: 20),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "to",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "REXA",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          // const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Image.asset(
            'lib/components/magic-hands.png',
            width: 300,
          ),
          const SizedBox(height: 20),
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
          // const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class OnboardPage2 extends StatelessWidget {
  const OnboardPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 105),
          Image.asset(
            'lib/components/scooter.png',
            width: 300,
          ),
          const SizedBox(height: 35),
          const Text(
            "Your order will be",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "immediately collected and",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "sent by our courier",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          //const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class OnboardPage3 extends StatelessWidget {
  const OnboardPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 125),
          Image.asset(
            'lib/components/package.png',
            width: 300,
          ),
          const SizedBox(height: 20),
          const Text(
            "Pick up delivery",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "at your door and enjoy",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "the package",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          //const SizedBox(height: 55),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _pages = [
    const OnboardPage1(),
    const OnboardPage2(),
    const OnboardPage3(),
    const OnboardPage4(), // Add the new page here
  ];
  double currentPage = 0; // Track the current page for progress indicator

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentPage !=
                    0) // Show back button on pages other than the first page
                  CupertinoButton(
                    onPressed: () {
                      if (_pageController.page != 0) {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      }
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      CupertinoIcons.back,
                      size: 28,
                      color: Color.fromARGB(255, 0, 89, 255),
                    ),
                  ),
                if (currentPage !=
                    0) // Show skip button on pages other than the first page
                  CupertinoButton(
                    onPressed: () {
                      if (_pageController.page != _pages.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      }
                    },
                    padding: EdgeInsets.zero,
                    child: const Visibility(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 89, 255),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _pages,
                onPageChanged: (int page) {
                  setState(() {
                    currentPage = page.toDouble();
                  });
                },
              ),
            ),
            //const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (_pageController.page != _pages.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 89, 255),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width:
                            100, // Adjust the size of the CircularProgressIndicator
                        height:
                            100, // Adjust the size of the CircularProgressIndicator
                        child: CircularProgressIndicator(
                          value: currentPage / (_pages.length - 1),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 0, 89, 255),
                          ),
                          strokeWidth: 3, // Adjust the strokeWidth as desired
                          backgroundColor: Colors.white,
                        ),
                      ),
                      const Icon(
                        CupertinoIcons.chevron_right,
                        size: 40, // You can adjust the size of the arrow icon
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Image.asset(
            'lib/components/rexa.png',
            width: 300,
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

class OnboardPage2 extends StatelessWidget {
  const OnboardPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Image.asset(
            'lib/components/magic-hands.png',
            width: 300,
          ),
          const SizedBox(height: 20),
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
          // const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class OnboardPage3 extends StatelessWidget {
  const OnboardPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 105),
          Image.asset(
            'lib/components/scooter.png',
            width: 300,
          ),
          const SizedBox(height: 35),
          const Text(
            "Your order will be",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "immediately collected and",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "sent by our courier",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          //const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class OnboardPage4 extends StatelessWidget {
  const OnboardPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 125),
          Image.asset(
            'lib/components/package.png',
            width: 300,
          ),
          const SizedBox(height: 20),
          const Text(
            "Pick up delivery",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "at your door and enjoy",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            "the package",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          //const SizedBox(height: 55),
        ],
      ),
    );
  }
}
