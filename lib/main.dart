import 'package:flutter/material.dart';
import 'package:myapp/buildFeatureItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Welcome to\nReminders',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Expanded(
                child: ListView(
                  children: [
                    FeatureItem(
                      icon: Icons.camera,
                      color: Colors.green,
                      title: 'Quick Creation',
                      description: 'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
                    ),
                    FeatureItem(
                      icon: Icons.shopping_cart,
                      color: Colors.orange,
                      title: 'Grocery Shopping',
                      description: 'Create a Grocery List that automatically sorts items you add by category.',
                    ),
                    FeatureItem(
                      icon: Icons.group,
                      color: Colors.yellow,
                      title: 'Easy Sharing',
                      description: 'Collaborate on a list, and even assign individual tasks.',
                    ),
                    FeatureItem(
                      icon: Icons.dashboard,
                      color: Colors.blue,
                      title: 'Powerful Organization',
                      description: 'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}