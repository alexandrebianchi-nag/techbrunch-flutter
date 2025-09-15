import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Challenge',
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout Challenge')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // TODO: Try aligning the cards with MainAxisAlignment and CrossAxisAlignment
            children: [
              // TODO: Use SizedBox or Padding to space the cards

              // TODO: Add the ProfileCardSkeletons widgets here
              // ProfileCardSkeleton 1
              const SizedBox(height: 24),
              // ProfileCardSkeleton 2
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for the profile card
class ProfileCardSkeleton extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  const ProfileCardSkeleton({super.key, required this.name, required this.description, required this.imageUrl,});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // TODO: Try aligning items inside the card with MainAxisAlignment and CrossAxisAlignment
          children: [
            // TODO: Use Padding, SizedBox, and Container to space and style your widgets

            // TODO: Add a circular avatar (CircleAvatar or Container)
            const Placeholder(fallbackHeight: 80, fallbackWidth: 80),
            const SizedBox(height: 16),
            // TODO: Add a name (Text widget)
            const Placeholder(fallbackHeight: 24, fallbackWidth: 120),
            const SizedBox(height: 8),
            // TODO: Add a short description (Text widget)
            const Placeholder(fallbackHeight: 20, fallbackWidth: 180),
            const SizedBox(height: 16),
            // TODO: Add a button (ElevatedButton or TextButton)
            const Placeholder(fallbackHeight: 40, fallbackWidth: 120),
            // BONUS: Add icons, social media row, or try a horizontal layout
          ],
        ),
      ),
    );
  }
}
