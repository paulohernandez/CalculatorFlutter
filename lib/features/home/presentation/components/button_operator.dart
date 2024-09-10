import 'package:calculator_flutter/features/home/bloc/home_bloc.dart';
import 'package:calculator_flutter/features/home/entities/operators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonOperator extends StatelessWidget {
  const ButtonOperator({required this.operatorType, super.key});

  final Operators operatorType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0XFFff9f0a),
        borderRadius: BorderRadius.circular(100),
      ),
      child: FilledButton(
        onPressed: () =>
            context.read<HomeBloc>().add(OtherButtonEvent(operatorType)),
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0XFFff9f0a),
        ),
        child: Text(
          operatorType.stringOperator,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
