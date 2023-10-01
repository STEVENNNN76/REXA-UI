import 'package:flutter/material.dart';

class ProductBag extends StatelessWidget {
  const ProductBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      "Bag",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Search button functionality
                      },
                      child: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              // Add your product bag content here
            ],
          ),
        ),
      ),
    );
  }
}
