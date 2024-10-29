import 'components/calculate.dart';

void main() {
  // Задание 1

  Calculate calc = new Calculate();
  print(calc.sum(1, 2));
  print(calc.mult(1, 2));
  print(calc.div(1, 0));
  print(calc.sub(1, 2));
}
