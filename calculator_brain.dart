import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You should avoid eating oily food, and you should exercise regularly.';
    } else if (_bmi > 18.5) {
      return 'You should eat more chips, and lift more in the gym.';
    } else {
      return 'You should only eat oily food, and you should not exercise at all.';
    }
  }
}
