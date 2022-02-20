import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/screens/add_task_screen.dart';

import '../widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final List<Task> taskList = [
    Task(title: 'this is a task ', isDone: false),
    Task(title: 'this is a task ', isDone: false),
    Task(title: 'this is a task ', isDone: false),
    Task(title: 'this is a task ', isDone: false),
    Task(title: 'this is a task ', isDone: false),
  ];

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(color: Colors.white),
      child: AddTaskScreen(
        addTaskCallback: (addNewTask) {
          setState(() {
            taskList.add(Task(title: addNewTask));
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 60, bottom: 30, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        size: 60,
                        color: Colors.lightBlue,
                      ),
                      radius: 40,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'TODOEY',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${taskList.length} task',
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    )),
                child: TasksList(tasks: taskList),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
