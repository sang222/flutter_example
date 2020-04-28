import 'package:flutter/material.dart';
import 'package:myapp/widgets/task_title.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/tasks_data.dart';

class TaskList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          return TaskTitle(
            longPressCallback: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            }
          );
        }, itemCount: Provider.of<TaskData>(context).taskCount);
      },
    );
  }
}