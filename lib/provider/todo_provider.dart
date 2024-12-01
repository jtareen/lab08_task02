import 'package:flutter/material.dart';
import 'package:lab08_task02/model/todo.dart';

class TodoProvider with ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void toggleTodoCompletion(int index) {
    _todos[index].toggleCompleted();
    notifyListeners();
  }
}