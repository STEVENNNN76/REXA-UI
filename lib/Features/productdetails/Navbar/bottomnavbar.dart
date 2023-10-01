/*
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Row(
            children: [
              ...List.generate(
                  4,
                  (index) => GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          height: 36,
                          width: 36,
                          child: Image.asset(
                            'lib/components/Bottom-NavIcon/NavIcon-1.png',
                          ),
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
*/

//working Nav Bar

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Index of the active page

  // List of image paths for the navigation icons
  final List<String> _iconPaths = [
    'lib/components/Bottom-NavIcon/NavIcon-1.png',
    'lib/components/Bottom-NavIcon/NavIcon-2.png',
    'lib/components/Bottom-NavIcon/NavIcon-3.png',
    'lib/components/Bottom-NavIcon/NavIcon-4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5), // Set the background color to F5F5F5
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              _iconPaths.length,
              (index) => GestureDetector(
                onTap: () {
                  // Update the active page index when an icon is tapped
                  setState(() {
                    _currentIndex = index;
                  });
                  // TODO: Navigate to the respective page here
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      _iconPaths[index],
                      height: 40,
                      width: 40,
                      color: _currentIndex == index
                          ? Colors.blue // Active icon color
                          : Colors.black, // Inactive icon color
                    ),
                    // Indicator bar
                    if (_currentIndex == index)
                      Container(
                        height: 4,
                        width: 36,
                        color: Colors.blue, // Color of the indicator bar
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
