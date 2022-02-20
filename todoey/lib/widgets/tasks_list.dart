import 'package:flutter/material.dart';

import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  List tasks;
  TasksList({Key? key, required this.tasks}) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.only(
            right: 30,
            left: 10,
            top: 10,
            bottom: 10,
          ),
          child: TaskTile(
            isCkecked: widget.tasks[index].isDone,
            title: widget.tasks[index].title,
            checkBoxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          ),
        );
      },
    );
  }
}
