import 'package:flutter/material.dart';
import 'package:flutter_app/local/injection/injection.dart';
import 'package:flutter_app/modules/spends/mobx/auth_store.dart';
import 'package:flutter_app/modules/spends/mobx/spends.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthStore auth = getIt<AuthStore>();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final spends = getIt<Spends>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              auth.logOut(); // Implement logout functionality here
            },
          ),
        ],

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: TextField(
                      controller: spends.controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Informe o valor',
                        suffixIcon: IconButton(
                          onPressed: spends.increment,
                          icon: Icon(Icons.add),
                        ),
                        prefixIcon: IconButton(
                          onPressed: spends.decrement,
                          icon: Icon(Icons.remove),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          spends.onManualSet(int.tryParse(value) ?? 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: FloatingActionButton(
              onPressed: spends.decrement,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: spends.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
