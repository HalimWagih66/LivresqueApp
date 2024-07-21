import 'package:flutter/material.dart';

class LivresqueApp extends StatelessWidget {
  const LivresqueApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Welcome to LivresqueApp")
            ],
          ),
        ),
    );
  }
}
