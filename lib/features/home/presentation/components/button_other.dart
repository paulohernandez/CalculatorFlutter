import 'package:calculator_flutter/features/home/bloc/home_bloc.dart';
import 'package:calculator_flutter/features/home/entities/operators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonOther extends StatelessWidget {
  const ButtonOther({required this.value, super.key});
  final String value;
  @override
  Widget build(BuildContext context) {
    var operatorType = Operators.clear;
    if (value == 'AC') {
      operatorType = Operators.clear;
    }
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0XFFa5a5a5),
        borderRadius: BorderRadius.circular(100),
      ),
      child: FilledButton(
        onPressed: () =>
            context.read<HomeBloc>().add(OtherButtonEvent(operatorType)),
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0XFFa5a5a5),
        ),
        child: Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
