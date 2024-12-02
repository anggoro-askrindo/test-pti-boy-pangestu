import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_pti_prabowo_adi/views/widget/molecules/stepper_widget.dart';

class BahariScreen extends StatelessWidget {
  const BahariScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  StepIndicator(
                    currentStep: 2,
                    totalSteps: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
