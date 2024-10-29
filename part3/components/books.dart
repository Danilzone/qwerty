class Book {
  String title;
  String author;
  int year;
  Book(this.title, this.author, this.year);
}

class Bookshelf {
  List<Book> books = [];

  void addBook(Book book) => books.add(book); // логика добавления
  void removeBook(Book book) => books.remove(book); // логика удаления
  void printBooks() => books.forEach((book) => print(// логика вывода
      '\nНаименование: ${book.title}\nАвтор: ${book.author}\nДата публикации: ${book.year}\n \n'));
}
