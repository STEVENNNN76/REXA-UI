import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _currentImageIndex = 0;

  final List<String> _productImages = [
    'lib/components/Sneakers/Nike-1.jpg',
    'lib/components/Sneakers/Nike-2.jpg',
    'lib/components/Sneakers/Nike-3.jpg',
    'lib/components/Sneakers/Nike-4.jpg',
    'lib/components/Sneakers/Nike-5.jpg',
    'lib/components/Sneakers/Nike-6.jpg',
  ];

  void _nextImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _productImages.length;
    });
  }

  void _previousImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex - 1 + _productImages.length) %
          _productImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your search button functionality here
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement your logic to show the image in a bigger view here
              },
              child: Image.asset(
                _productImages[_currentImageIndex],
                height: 300, // Adjust the size as needed
                width: 300, // Adjust the size as needed
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: _previousImage,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: _nextImage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
