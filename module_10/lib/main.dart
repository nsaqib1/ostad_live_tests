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
      title: 'Module 10 Live Test',
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
  final List<Item> _list = [
    Item(title: "Item 1"),
    Item(title: "Item 2"),
    Item(title: "Item 3"),
    Item(title: "Item 4"),
    Item(title: "Item 5"),
    Item(title: "Item 6"),
  ];

  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selection Screen"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {
          final Item item = _list[index];
          return ListTile(
            onTap: () => _selectItem(index),
            tileColor: item.isSelected ? Theme.of(context).primaryColor : null,
            title: Text(item.title),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: _list.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialogue,
        child: const Icon(Icons.check),
      ),
    );
  }

  void _showDialogue() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Selected Items"),
          content: Text("Number of Selected Items: $_count"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  void _selectItem(int index) {
    final Item item = _list[index];
    item.isSelected = !item.isSelected;
    if (_list[index].isSelected) {
      _count++;
    }
    if (item.isSelected == false) {
      _count--;
    }

    setState(() {});
  }
}

class Item {
  final String title;
  bool isSelected;

  Item({required this.title, this.isSelected = false});
}
