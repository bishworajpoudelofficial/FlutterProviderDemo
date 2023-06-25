import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
              Consumer<Counter>(
                builder: (context, counter, child) {
                  return Text(
                    'Count: ${counter.count}',
                    style: const TextStyle(fontSize: 24),
                  );
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Access the Counter instance and call the increment method
                  Provider.of<Counter>(context, listen: false).increment();
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

