import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isCkecked;
  final Function checkBoxCallback;

  const TaskTile({
    Key? key,
    required this.title,
    required this.isCkecked,
    required this.checkBoxCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.nunito(
          decoration: isCkecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isCkecked,
        onChanged: (value) => checkBoxCallback(value),
      ),
    );
  }
}
