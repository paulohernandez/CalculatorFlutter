import 'package:calculator_flutter/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonNumber extends StatelessWidget {
  const ButtonNumber({required this.number, super.key});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0XFF343434),
        borderRadius: BorderRadius.circular(100),
      ),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor:  const Color(0XFF343434),
        ),
        onPressed: () => context.read<HomeBloc>().add(InputNumber(number)),
        child: Text(
          '$number',
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
