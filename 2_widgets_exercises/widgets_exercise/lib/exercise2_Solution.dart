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
                /*const Placeholder(fallbackHeight: 80, color: Colors.green),
                const SizedBox(height: 16),*/
                const MyCard(title: 'My Card Title', subtitle: 'My Card Subtitle'),

                // TODO: Part 2 - Stateful Widget (CounterWidget)
                // Insert your CounterWidget here
                /*const Placeholder(fallbackHeight: 80, color: Colors.orange),
                const SizedBox(height: 16),*/
                const CounterWidget(),

                // TODO: Part 3 - Second Counter (Independent State)
                // Insert your second CounterWidget or SecondCounterWidget here
                /*const Placeholder(fallbackHeight: 80, color: Colors.red),
                const SizedBox(height: 16),*/


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
class MyCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const MyCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: const Icon(Icons.star),
      ),
    );
  }
}

// TODO: Implement your CounterWidget here (StatefulWidget)
// class CounterWidget extends StatefulWidget { ... }
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Counter: $_counter'),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          onPressed: _incrementCounter,
        ),
      ),
    );
  }
}

// TODO: Implement your SecondCounterWidget here (StatefulWidget, optional)
// class SecondCounterWidget extends StatefulWidget { ... }
class SecondCounterWidget extends StatefulWidget {
  const SecondCounterWidget({super.key});

  @override
  _SecondCounterWidgetState createState() => _SecondCounterWidgetState();
}

class _SecondCounterWidgetState extends State<SecondCounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Second Counter: $_counter'),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          onPressed: _incrementCounter,
        ),
      ),
    );
  }
}
