import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child:  MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter>(context);
    return MaterialApp(
      title: 'Provider Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Count: ${counterProvider.count}',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  counterProvider.increment();
                },
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}