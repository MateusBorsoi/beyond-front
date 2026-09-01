import 'package:flutter/material.dart';

class Spends extends StatefulWidget {
  const Spends({super.key});

  @override
  State<Spends> createState() => _SpendsState();
}

class _SpendsState extends State<Spends> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spends')),
      body: const Center(child: Text('Spends Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement add spend functionality here
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
