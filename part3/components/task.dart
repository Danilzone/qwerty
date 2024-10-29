class Task {
  String title;
  String description;
  bool isDone;
  Task(this.title, this.description, this.isDone);
}

class TaskList {
  List<Task> taskList = [];

  void addTask(Task task) => taskList.add(task);

  void removeTask(Task task) => taskList.remove(task);

  // передаём индекс, описание и статус
  void editTask(index, title, description, isDone) {
    // изменяем значения

    taskList[index].title = title;
    taskList[index].description = description;
    taskList[index].isDone = isDone;
  }

  void printTasks() => taskList.forEach((task) => print(
      '\nЗадание: ${task.title}\nОписание: ${task.description}\nВыполнено: ${task.isDone}\n \n'));
}
