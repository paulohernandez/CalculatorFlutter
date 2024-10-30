enum Operators {
  clear,
  // percentage,
  addition,
  subtraction,
  division,
  multiplication,
  output,
}

extension StringOperators on Operators {
  String get stringOperator {
    switch (this) {
      case Operators.clear:
        return 'AC';
      case Operators.addition:
        return '+';
      case Operators.subtraction:
        return '-';
      case Operators.division:
        return '÷';
      case Operators.multiplication:
        return 'x';
      case Operators.output:
        return '=';
    }
  }
}
