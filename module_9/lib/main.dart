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
      title: 'Module 9 Live Test',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  _handleClick(int index, String msg) {
    _index = index;
    setState(() {});
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Size Selector"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: Center(
          child: Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _index == 0 ? Colors.amber : Colors.grey,
                ),
                onPressed: () => _handleClick(0, "S"),
                child: const Text("S"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _index == 0 ? Colors.amber : Colors.grey,
                ),
                onPressed: () => _handleClick(0, "S"),
                child: Text("S"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _index == 0 ? Colors.amber : Colors.grey,
                ),
                onPressed: () => _handleClick(0, "S"),
                child: Text("S"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _index == 0 ? Colors.amber : Colors.grey,
                ),
                onPressed: () => _handleClick(0, "S"),
                child: Text("S"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _index == 0 ? Colors.amber : Colors.grey,
                ),
                onPressed: () => _handleClick(0, "S"),
                child: Text("S"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _index == 0 ? Colors.amber : Colors.grey,
                ),
                onPressed: () => _handleClick(0, "S"),
                child: Text("S"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
