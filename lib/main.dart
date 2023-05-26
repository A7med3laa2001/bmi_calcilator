import 'package:flutter/material.dart';
import 'BMT_CALCULATOR.dart';
import 'home.dart';

void main() {
  runApp(const bmiCalcilator());

}
class bmiCalcilator extends StatelessWidget {
  const bmiCalcilator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCILTOR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}



