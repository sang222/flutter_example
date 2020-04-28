import 'package:flutter/material.dart';
import 'package:myapp/models/task.dart';

class TaskData extends ChangeNotifier {
  
  List<Task> tasks = [
    Task(name: 'Buy milks'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy anythings'),
  ];
  
  String _newTextInput;
  
  int get taskCount {
    return tasks.length;
  }
  
  void changeText(String text) {
    _newTextInput = text;
  }
  
  String get currentText {
    return _newTextInput;
  }
  
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
  
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
  
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

}