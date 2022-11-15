import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Counter App",
    theme: ThemeData(primarySwatch: Colors.indigo),
    home: const Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('COUNT APP'),
        actions: const [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: 'search',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count Value: $_count',
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontFamily: 'Times New Roman'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrement,
                  tooltip: 'Minus',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: _increment,
                  tooltip: 'Add',
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
