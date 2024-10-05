import 'package:flutter/material.dart';
import 'package:freshnest_app/screens/home_screen.dart';

class OrderSuccessPage extends StatelessWidget {
  static const String routeName = "OrderSuccessPage";

  const OrderSuccessPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Success Icon
            SizedBox(
              height: MediaQuery.of(context).size.height * .25,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(20),
              child: const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 150,
              ),
            ),
            const SizedBox(height: 20),

            // Order Accepted Text
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: const Text(
                'Your Order has been accepted',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Additional Description
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: const Text(
                'Your items have been placed and are on their way to being processed',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .2),

            // Track Order Button
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreen.routeName, (_) => false);
                  // Handle track order action
                },
                child: const Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
