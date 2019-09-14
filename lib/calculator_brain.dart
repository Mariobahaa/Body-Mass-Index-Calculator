import 'dart:math';

class CalculatorBrain{

  final int height;
  final int weight;

  double _bmi;
  CalculatorBrain(this.height,this.weight);

  String calculateBMI(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25)return 'Overweight';
    else if (_bmi > 18.5) return 'Normal';
    else return 'Underweight';
  }

  String getInterpretation(){
    if(_bmi>=25)return 'Your body is higher than the normal weight,you need to excercise more';
    else if (_bmi > 18.5) return 'Your body is within normal range,good job!';
    else return 'Your body is lower than the normal weight,you need to eat more';
  }

}