class CurrencyConverter {
  double convert(double amount, String from, String to) {
    if (from == 'USD' && to == 'RUB') {
      return amount * 70;
    } else if (from == 'RUB' && to == 'USD') {
      return amount / 70;
    } else if (from == 'USD' && to == 'EUR') {
      return amount * 0.9;
    } else {
      return amount;
    }
  }
}

void main() {
  CurrencyConverter converter = CurrencyConverter();
  print(converter.convert(100, 'USD', 'RUB'));
  print(converter.convert(100, 'RUB', 'USD'));
  print(converter.convert(100, 'USD', 'EUR'));
  print(converter.convert(100, 'EUR', 'USD'));
}
