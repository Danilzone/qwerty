class Calculate {
  double sum(double a, double b) => a + b;
  double mult(double a, double b) => a * b;
  double div(double a, double b) {
    // При делении на 0 возвращаем 0
    if (b == 0) {
      return 0;
    } else {
      return a / b;
    }
  }

  double sub(double a, double b) => a - b;
}
