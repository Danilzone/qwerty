import 'components/calculate.dart';
import 'components/books.dart';
import 'components/task.dart';
import 'components/bank.dart';
import 'components/gameNG.dart';
import 'components/converterMoney.dart';
import 'components/password.dart';

void main() {
  // Задание 1

  Calculate calc = new Calculate();
  print(calc.sum(1, 2));
  print(calc.mult(1, 2));
  print(calc.div(1, 0)); // При делении на 0 возвращаем 0
  print(calc.sub(1, 2));

  // Задание 2
  Bookshelf bookshelf = Bookshelf();

  Book book1 = Book("C# Для чайников", "Гвоздев Сергей Михайлович", 2025);
  Book book2 = Book("Чайник для чайников", "Иван Иванович Бытько", 2007);
  Book book3 = Book("Верните 2007", "Эмо", 2014);

  bookshelf.addBook(book1);
  bookshelf.addBook(book2);

  bookshelf.printBooks();

  bookshelf.addBook(book3);

  bookshelf.printBooks();

  bookshelf.removeBook(book2);
  bookshelf.removeBook(book1);

  bookshelf.printBooks();

  // Задание 3
  TaskList taskList = TaskList();

  Task task1 = Task("Задание 1", "Описание задания 1", false);
  Task task2 = Task("Задание 2", "Описание задания 2", true);
  Task task3 = Task("Задание 3", "Описание задания 3", false);

  taskList.addTask(task1);
  taskList.addTask(task2);
  taskList.addTask(task3);

  taskList.printTasks();

  taskList.editTask(0, "Задание 1", "Описание задания 1 NEW NEW", true);

  taskList.printTasks();

  taskList.removeTask(task2);

  taskList.printTasks();

  // Задание 4
  BankAccount bankAccount = BankAccount(11224, 100, 'Aaaaa');

  bankAccount.replenishment(1000);
  bankAccount.checkBalance();
  bankAccount.withdraw(500);
  bankAccount.checkBalance();
  bankAccount.withdraw(1000);

  // 5
  NumberGuessing gameNG = new NumberGuessing();

  for (int i = 0; i < 100; i++) gameNG.guess(i);

  // 6
  CurrencyConverter converter = new CurrencyConverter();
  print(converter.convert(100, 'USD', 'RUB'));
  print(converter.convert(100, 'RUB', 'USD'));
  print(converter.convert(100, 'USD', 'EUR'));
  print(converter.convert(100, 'EUR', 'USD'));

  // 7
  PasswordGenerator passwordGenerator = new PasswordGenerator();
  print(passwordGenerator.generate(12));
}
