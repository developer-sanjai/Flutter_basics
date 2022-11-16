import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Counter App",
    theme: ThemeData(primarySwatch: Colors.purple),
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

  void _reset() {
    setState(() {
      _count = 0;
    });
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
                  color: Colors.orange,
                  fontSize: 30,
                  fontFamily: 'Times New Roman'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    backgroundColor: Colors.purple, // background
                    foregroundColor: Colors.white, // foreground
                  ),
                  onPressed: _decrement,
                  child: const Text('MINUS'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    // foreground
                  ),
                  onPressed: _increment,
                  child: const Text('ADD'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // background
                    foregroundColor: Colors.white, // foreground
                  ),
                  onPressed: _reset,
                  child: const Text('RESET'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
