import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module 10 Live Test',
      home: const HomeScreen(),
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
            onTap: () => _selectItem(index, item),
            tileColor: item.isSelected ? Theme.of(context).primaryColor : null,
            title: Text(item.title),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: _list.length,
      ),
    );
  }

  void _selectItem(int index, Item item) {
    _list[index].isSelected = !_list[index].isSelected;
    setState(() {});
  }
}

class Item {
  final String title;
  bool isSelected;

  Item({required this.title, this.isSelected = false});
}
