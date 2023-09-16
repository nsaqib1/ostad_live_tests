import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module 6 Live Test',
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
        title: const Text("My Shopping List"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text("Shop"),
          ),
          ListTile(
            leading: Icon(Icons.apple),
            title: Text("Apple"),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Star"),
          ),
          ListTile(
            leading: Icon(Icons.sunny),
            title: Text("Sunny"),
          ),
        ],
      ),
    );
  }
}
