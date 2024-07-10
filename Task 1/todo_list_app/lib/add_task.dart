import 'package:flutter/material.dart';

class AddTaskDialog extends StatefulWidget {
  final Function(String) onAdd;
  final String initialTaskTitle;

  AddTaskDialog({required this.onAdd, this.initialTaskTitle = ''});

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialTaskTitle);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.initialTaskTitle.isEmpty ? 'Add Task' : 'Edit Task'),
      content: TextField(
        controller: _controller,
        onChanged: (value) {
          setState(() {
          //  _taskTile
          });
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            widget.onAdd(_controller.text);
            Navigator.of(context).pop();
          },
          child: Text(widget.initialTaskTitle.isEmpty ? 'Add' : 'Update'),
        ),
      ],
    );
  }
}