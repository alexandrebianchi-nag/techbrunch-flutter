import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Playground',
      home: Scaffold(
        appBar: AppBar(title: const Text('Widgets Playground')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TODO: Part 1 - Custom Stateless Widget (MyCard)
                // Insert your MyCard widget here
                const Placeholder(fallbackHeight: 80, color: Colors.green),
                const SizedBox(height: 16),

                // TODO: Part 2 - Stateful Widget (CounterWidget)
                // Insert your CounterWidget here
                const Placeholder(fallbackHeight: 80, color: Colors.orange),
                const SizedBox(height: 16),

                // TODO: Part 3 - Second Counter (Independent State)
                // Insert your second CounterWidget or SecondCounterWidget here
                const Placeholder(fallbackHeight: 80, color: Colors.red),
                const SizedBox(height: 16),

                // TODO: Bonus - Widget Playground
                // Add a Column with Text, Icon, Image.network, and a Button here
                const Placeholder(fallbackHeight: 120, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// TODO: Implement your MyCard widget here (StatelessWidget)
// class MyCard extends StatelessWidget { ... }

// TODO: Implement your CounterWidget here (StatefulWidget)
// class CounterWidget extends StatefulWidget { ... }

// TODO: Implement your SecondCounterWidget here (StatefulWidget, optional)
// class SecondCounterWidget extends StatefulWidget { ... }
