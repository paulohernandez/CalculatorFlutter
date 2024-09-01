import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Spacer(),
          Text('Heloo'),
          Row(
            children: [
              _customButtonOperator('+'),
              _customButtonNumber('8'),
              _customButtonNumber('8'),
              _customButtonOther('AC')
            ],
          )
        ],
      ),
    );
  }

  Widget _customButtonOperator(String value) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0XFFff9f0a),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _customButtonNumber(String value) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0XFF343434),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _customButtonOther(String value) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0XFFa5a5a5),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
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
