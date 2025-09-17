import 'package:flutter/material.dart';
// TODO: (Bonus) Try using Google Fonts by adding the package and importing it here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO: Add ThemeData and customize colors & fonts
      theme: ThemeData(
        // TODO: Change the primary color
        primaryColor: Colors.blue,
        // TODO: Change the font family (try Google Fonts or a custom font)
        fontFamily: 'Roboto',
        // TODO: Customize text styles (TextTheme)
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          elevation: 4,
          centerTitle: true,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.blue),
        ),
        cardTheme: const CardTheme(
          color: Colors.blueAccent,
          elevation: 4,
          margin: EdgeInsets.all(16),
        ),
      ),
      // TODO: Try enabling dark mode by setting themeMode and customizing darkTheme
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          elevation: 4,
          centerTitle: true,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.deepPurple),
        ),
        cardTheme: const CardTheme(
          color: Colors.deepPurpleAccent,
          elevation: 4,
          margin: EdgeInsets.all(16),
        ),
      ),
      themeMode: _themeMode,
      home: StylingHomePage(
        isDarkMode: _themeMode == ThemeMode.dark,
        onThemeToggle: _toggleTheme,
      ),
    );
  }
}

class StylingHomePage extends StatefulWidget {
  final bool isDarkMode;
  final void Function(bool) onThemeToggle;
  const StylingHomePage({super.key, required this.isDarkMode, required this.onThemeToggle});

  @override
  State<StylingHomePage> createState() => _StylingHomePageState();
}

class _StylingHomePageState extends State<StylingHomePage> {
  // BONUS: Animate a color or style change
  Color _cardColor = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styling Exercise'),
        // TODO: Style the AppBar (color, elevation, etc.) using the theme
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TODO: Add a toggle button to switch between light and dark mode.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Light'),
                Switch(
                  value: widget.isDarkMode,
                  onChanged: widget.onThemeToggle,
                ),
                const Text('Dark'),
              ],
            ),
            const SizedBox(height: 20),
            // TODO: Style this text (color, font size, etc.) using the theme
            Text(
              'Hello, Flutter Styling!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            // TODO: Style this button (color, shape, text style) using the theme
            ElevatedButton(
              onPressed: () {
                // BONUS: Animate a color or style change
                setState(() {
                  _cardColor = _cardColor == Colors.blueAccent ? Colors.greenAccent : Colors.blueAccent;
                });
              },
              child: const Text('Styled Button'),
            ),
            const SizedBox(height: 20),
            // BONUS : Style an input field or card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter something',
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Card(
                color: _cardColor,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Styled Card',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
