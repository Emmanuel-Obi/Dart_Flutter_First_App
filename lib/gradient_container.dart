import 'package:flutter/material.dart';
import 'package:test_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, this.outputText, {super.key});

  final List<Color> gradientColors;
  final String outputText;
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: StyledText(outputText),
          ),
    );
  }
}

