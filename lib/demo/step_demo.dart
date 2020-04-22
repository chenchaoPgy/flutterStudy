import 'package:flutter/material.dart';

class StepDemo extends StatefulWidget {
  @override
  _StepDemoState createState() => _StepDemoState();
}

class _StepDemoState extends State<StepDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Stepper(
          currentStep: _currentStep,
          onStepTapped: (int value) {
            setState(() {
              _currentStep = value;
            });
          },
          onStepCancel: () {
            setState(() {
              _currentStep > 0 ? _currentStep -- : _currentStep = 0;
            });
          },
          onStepContinue: () {
            setState(() {
              _currentStep < 2 ? _currentStep ++ : _currentStep = 0;
            });
          },
          steps: [
            Step(
                title: Text('Login'),
                content: Text('datasdasdasdasdasdssdasdsa'),
                isActive: _currentStep == 0),
            Step(
                title: Text('step2'),
                content: Text('buzhouer'),
                isActive: _currentStep == 1),
            Step(
                title: Text('Step3'),
                content: Text('dsfvgfhbrtev nutyhjv'),
                isActive: _currentStep == 2),
          ],
        ),
      ),
    );
  }
}
