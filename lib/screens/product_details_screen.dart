import 'package:flutter/material.dart';
import 'package:freshnest_app/screens/home_screen.dart';

class ProductDetailsPage extends StatefulWidget {
  static const String routeName = "ProductDetailsPage";
  Product product;
  ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            // Back action
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {
              // Wishlist action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Product Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                widget.product.images[0], // Replace with your asset image
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),

            // Product Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Fresh Red Carrots",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "1kg, Price",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Text("4.8 ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("(256)", style: TextStyle(color: Colors.grey)),
                      Icon(Icons.arrow_forward_ios,
                          size: 14, color: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Quantity Selector and Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                // Decrease quantity
                              },
                            ),
                            Container(
                                width: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 219, 219, 219)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text('1',
                                    style: TextStyle(fontSize: 18))),
                            IconButton(
                              icon: const Icon(Icons.add, color: Colors.green),
                              onPressed: () {
                                // Increase quantity
                              },
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "\$4.00",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Product Detail
                  const ExpansionTile(
                    initiallyExpanded: true,
                    title: Text(
                      "Product Detail",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Carrots Are Nutritious. Apples May Be Good For Weight Loss. Carrots May Be Good For Your Heart As Part Of A Healthful And Varied Diet.",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  const ExpansionTile(
                    initiallyExpanded: true,
                    title: Text(
                      "Nutritions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Carrots Are Nutritious. Apples May Be Good For Weight Loss. Carrots May Be Good For Your Heart As Part Of A Healthful And Varied Diet.",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),

                  // Nutrition Info

                  const SizedBox(height: 20),
                ],
              ),
            ),

            // Add to Cart Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    // Add to Cart action

                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
