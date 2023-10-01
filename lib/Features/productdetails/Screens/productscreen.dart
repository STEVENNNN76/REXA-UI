import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _currentImageIndex = 0;
  int _selectedSize = -1;

  final List<String> _productImages = [
    'lib/components/Sneakers/Nike-1.jpg',
    'lib/components/Sneakers/Nike-2.jpg',
    'lib/components/Sneakers/Nike-3.jpg',
    'lib/components/Sneakers/Nike-4.jpg',
    'lib/components/Sneakers/Nike-5.jpg',
    'lib/components/Sneakers/Nike-6.jpg',
  ];

  Widget _buildSizeOption(int index, String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 35.0,
          height: 30.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: _selectedSize == index
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
            color: _selectedSize == index
                ? const Color.fromARGB(255, 0, 0, 0)
                : Colors.white,
          ),
          child: Center(
            child: Text(
              size,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: _selectedSize == index ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

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
                      "Footscape Woven",
                      style: TextStyle(
                        fontSize: 18.0,
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
              const SizedBox(height: 20.0),
              ClipRRect(
                // Add a rounded border to the main image
                borderRadius: BorderRadius.circular(10.0),
                child: GestureDetector(
                  onTap: () {
                    // Show the image in a bigger view here
                  },
                  child: Image.asset(
                    _productImages[_currentImageIndex],
                    height: 360,
                    width: 360,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 100.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _productImages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentImageIndex = index;
                        });
                      },
                      child: Padding(
                        // Size of the smaller images
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: _currentImageIndex == index
                                  ? const Color.fromARGB(255, 91, 92,
                                      92) // Highlighted border color
                                  : Colors.transparent, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(
                                10.0), // Rounded borders for smaller images
                          ),
                          child: Image.asset(
                            _productImages[index],
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Black and Smoke Grey",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Saddle up and head west. More eye-catching than the whirling dust of thundering with horsehair leather and woven details. And don't worry—you won't be hoofing it in these. We harnessed research from the Nike Sport Research Lab (NSRL) to help each step feel as natural as possible, kinda like wearing your favorite worn-in jeans. Time to ride!",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Choose Size",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildSizeOption(0, "S"),
                    _buildSizeOption(1, "M"),
                    _buildSizeOption(2, "L"),
                    _buildSizeOption(3, "XL"),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              CustomButton(
                text: "Add to Cart",
                onPressed: () {
                  //  To add the product to the cart here
                },
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom button class
class CustomButton extends StatelessWidget {
  String? text;
  void Function() onPressed;
  CustomButton({super.key, this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(340, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(text ?? 'Custom Button'),
    );
  }
}
