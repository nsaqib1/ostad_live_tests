import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Module 5 Live Test',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              color: Colors.green,
              size: 50,
            ),
            Text(
              "John Doe",
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
            Text(
              "Flutter Batch 4",
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
