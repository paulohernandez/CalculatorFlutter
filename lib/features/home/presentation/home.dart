import 'package:calculator_flutter/features/home/bloc/home_bloc.dart';
import 'package:calculator_flutter/features/home/entities/operators.dart';
import 'package:calculator_flutter/features/home/presentation/components/button_number.dart';
import 'package:calculator_flutter/features/home/presentation/components/button_operator.dart';
import 'package:calculator_flutter/features/home/presentation/components/button_other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Text(
                  state.word ?? '0',
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 70, color: Colors.white),
                );
              },
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonOther(value: 'AC'),
                ButtonOther(value: '+/-'),
                ButtonOther(value: '%'),
                ButtonOperator(
                  operatorType: Operators.division,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonNumber(number: 7),
                ButtonNumber(number: 8),
                ButtonNumber(number: 9),
                ButtonOperator(
                  operatorType: Operators.multiplication,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonNumber(number: 4),
                ButtonNumber(number: 5),
                ButtonNumber(number: 6),
                ButtonOperator(
                  operatorType: Operators.subtraction,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonNumber(number: 1),
                ButtonNumber(number: 2),
                ButtonNumber(number: 3),
                ButtonOperator(
                  operatorType: Operators.addition,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0XFF343434),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: FilledButton(
                      onPressed: () =>
                          context.read<HomeBloc>().add(const InputNumber(0)),
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0XFF343434),
                      ),
                      child: const Text(
                        '0',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const ButtonNumber(number: 2),
                const SizedBox(width: 5),
                const ButtonOperator(
                  operatorType: Operators.output,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
