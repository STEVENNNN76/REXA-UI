import 'package:flutter/material.dart';

class ProductDiscovery extends StatefulWidget {
  const ProductDiscovery({Key? key}) : super(key: key);

  @override
  _ProductDiscoveryState createState() => _ProductDiscoveryState();
}

class _ProductDiscoveryState extends State<ProductDiscovery> {
  String selectedCategory = 'Men';

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
                    GestureDetector(
                      onTap: () {
                        // Search button functionality
                      },
                      child: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Discovery',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = 'Men';
                  });
                },
                child: buildCategoryItem('Men', selectedCategory == 'Men'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = 'Women';
                  });
                },
                child: buildCategoryItem('Women', selectedCategory == 'Women'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = 'Kids';
                  });
                },
                child: buildCategoryItem('Kids', selectedCategory == 'Kids'),
              ),
              const SizedBox(height: 10),
              if (selectedCategory == 'Men') ...[
                buildProductItem('Product 1', 'Description 1'),
                buildProductItem('Product 2', 'Description 2'),
                buildProductItem('Product 3', 'Description 3'),
                buildProductItem('Product 4', 'Description 4'),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryItem(String category, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isSelected ? Colors.black : Colors.grey,
            width: isSelected ? 2 : 1,
          ),
        ),
      ),
      child: Text(
        category,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildProductItem(String productName, String description) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset(
            'components/Product-Images/spider.png',
            height: 100,
            width: 100,
          ),
          const SizedBox(height: 8),
          Text(
            productName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(description),
        ],
      ),
    );
  }
}
