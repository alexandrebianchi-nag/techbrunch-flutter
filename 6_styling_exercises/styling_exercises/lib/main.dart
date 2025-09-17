import 'package:flutter/material.dart';
// TODO: (Bonus) Try using Google Fonts by adding the package and importing it here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO: Add ThemeData and customize colors & fonts
      theme: ThemeData(
        // TODO: Change the primary color
        // TODO: Change the font family (try Google Fonts or a custom font)
        fontFamily: 'Roboto',
        // TODO: Customize text styles (TextTheme)
      ),
      // TODO: Try enabling dark mode by setting themeMode and customizing darkTheme
      home: const StylingHomePage(),
    );
  }
}

class StylingHomePage extends StatelessWidget {
  const StylingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styling Exercise'),
        // TODO: Style the AppBar (color, elevation, etc.) using the theme
        centerTitle: true,
        elevation: 4,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TODO: Add a toggle button to switch between light and dark mode.
            const SizedBox(height: 20),
            // TODO: Style this text (color, font size, etc.) using the theme
            const Text('Hello, Flutter Styling!'),
            const SizedBox(height: 20),
            // TODO: Style this button (color, shape, text style) using the theme
            ElevatedButton(
              onPressed: () {},
              child: const Text('Styled Button'),
            ),
            const SizedBox(height: 20),
            // BONUS : Style an input field or card
            // BONUS : Animate a color or style change
          ],
        ),
      ),
    );
  }
}
