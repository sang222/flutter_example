import 'package:flutter/material.dart';
import 'package:myapp/widgets/task_title.dart';
import 'package:myapp/models/task.dart';

class TaskList extends StatefulWidget {
  
  final List<Task> tasks;
  
  TaskList(this.tasks);
  
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTitle(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        }
      );
    }, itemCount: widget.tasks.length);
  }
}