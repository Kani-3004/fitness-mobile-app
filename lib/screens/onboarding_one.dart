import 'package:flutter/material.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.pink
            ], // Adjust gradient colors as needed
            begin: Alignment.centerLeft, // Start from the left
            end: Alignment.centerRight, // End on the right
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image/Illustration
            Image.asset('assets/your_image.png'), // Update with your image path

            SizedBox(height: 20),

            // Title
            Text(
              'Track Your Goal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Don't worry if you have trouble determining your goals. We can help you determine your goals and track them.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ),

            SizedBox(height: 40),

            // Next Button
            IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.white),
              iconSize: 40,
              onPressed: () {
                // Add your navigation logic here (e.g., navigate to next page)
              },
            ),
          ],
        ),
      ),
    );
  }
}
