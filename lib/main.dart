import 'package:flutter/material.dart';
import 'package:test_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
                Color.fromARGB(255, 44, 6, 108),
                Color.fromARGB(255, 92, 27, 203),
               Color.fromARGB(255, 117, 74, 190),
              ], 'Testing For Kolikoman.'),
      ),
    ),
  );
}

