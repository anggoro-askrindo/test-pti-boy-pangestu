import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final double stepSize;
  final Color activeColor;
  final Color inactiveColor;
  final Color completedColor;

  StepIndicator({
    required this.currentStep,
    required this.totalSteps,
    this.stepSize = 30.0,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.completedColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSteps, (index) {
        Color color;
        if (index < currentStep) {
          color = completedColor;
        } else if (index == currentStep) {
          color = activeColor;
        } else {
          color = inactiveColor;
        }

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: stepSize,
          height: stepSize,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
