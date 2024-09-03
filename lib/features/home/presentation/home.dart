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
          Text(
            'Heloo',
            style: TextStyle(fontSize: 70, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _customButtonOther('AC'),
              _customButtonOther('+/-'),
              _customButtonOther('%'),
              _customButtonOperator('÷'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _customButtonNumber('7'),
              _customButtonNumber('8'),
              _customButtonNumber('9'),
              _customButtonOperator('x'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _customButtonNumber('4'),
              _customButtonNumber('5'),
              _customButtonNumber('6'),
              _customButtonOperator('-'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _customButtonNumber('1'),
              _customButtonNumber('2'),
              _customButtonNumber('3'),
              _customButtonOperator('+'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0XFF343434),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Text(
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
              ),
              const SizedBox(width: 10),
              _customButtonNumber('.'),
              const SizedBox(width: 10),
              _customButtonOperator('='),
            ],
          ),
        ],
      ),
    );
  }

  Widget _customButtonOperator(String value) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 100,
        height: 100,
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
      ),
    );
  }

  Widget _customButtonNumber(String value) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 100,
        height: 100,
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
      ),
    );
  }

  Widget _customButtonOther(String value) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 100,
        height: 100,
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
      ),
    );
  }
}
