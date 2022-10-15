class ToDo {
  String? id;
  String? todoText;
  bool done;

  ToDo({
    required this.id,
    required this.todoText,
    this.done = false,
  });

}