import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

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
  String getInterpretation()
  {
    if(_bmi>=25){
      return 'Ohh dear, you have a higher than normal body weight. Try to get out of you busy schedule and do a little exercise.';}
    else if(_bmi> 18.5) {
      return 'Honey! You have the perfect bmi. Good Job ;-)';
    }
    else {
      return 'Ohh darling, you have a lower than normal body weight. You can eat a little more, but make sure its a healthy diet.';
    }
  }
}
