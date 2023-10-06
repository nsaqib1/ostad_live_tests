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
        duration: const Duration(seconds: 1),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor:
                      _index == 0 ? Colors.amber.shade700 : Colors.grey,
                ),
                onPressed: () => _handleClick(0, "S"),
                child: const Text("S"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor:
                      _index == 1 ? Colors.amber.shade700 : Colors.grey,
                ),
                onPressed: () => _handleClick(1, "M"),
                child: const Text("M"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor:
                      _index == 2 ? Colors.amber.shade700 : Colors.grey,
                ),
                onPressed: () => _handleClick(2, "L"),
                child: const Text("L"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor:
                      _index == 3 ? Colors.amber.shade700 : Colors.grey,
                ),
                onPressed: () => _handleClick(3, "XL"),
                child: const Text("XL"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor:
                      _index == 4 ? Colors.amber.shade700 : Colors.grey,
                ),
                onPressed: () => _handleClick(4, "XXL"),
                child: const Text("XXL"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor:
                      _index == 5 ? Colors.amber.shade700 : Colors.grey,
                ),
                onPressed: () => _handleClick(5, "XXXL"),
                child: const Text("XXXL"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
