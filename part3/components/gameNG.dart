import 'dart:math';

class NumberGuessing {
  int _secretNumber = Random().nextInt(100) + 1;

  void guess(int guess) {
    if (guess > _secretNumber) {
      print("Загаданное число меньше");
    } else if (guess < _secretNumber) {
      print("Загаданное число больше");
    } else {
      print("Вы угадали!");
    }
  }
}
