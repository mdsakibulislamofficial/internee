import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskScreen extends StatefulWidget {
  final Function addTaskCallback;
  const AddTaskScreen({
    Key? key,
    required this.addTaskCallback,
  }) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String addtaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Todo',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.blueAccent,
            ),
          ),
          TextField(
            onChanged: (value) {
              addtaskTitle = value;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              hintStyle: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              widget.addTaskCallback(addtaskTitle);
              Navigator.pop(context);
            },
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
