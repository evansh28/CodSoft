import 'package:flutter/material.dart';
import 'package:todo_list_app/add_task.dart';
import 'task.dart';
// import 'add_task_dialog.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final List<Task> _tasks = [];

  void _addTask(String taskTitle) {
    setState(() {
      _tasks.add(Task(title: taskTitle));
    });
  }

  void _editTask(int index, String newTaskTitle) {
    setState(() {
      _tasks[index].title = newTaskTitle;
    });
  }

  void _toggleTaskCompletion(int index) {
    setState(() {
      _tasks[index].isCompleted = !_tasks[index].isCompleted;
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AddTaskDialog(
          onAdd: (taskTitle) {
            _addTask(taskTitle);
          },
        );
      },
    );
  }

  void _showEditTaskDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AddTaskDialog(
          initialTaskTitle: _tasks[index].title,
          onAdd: (newTaskTitle) {
            _editTask(index, newTaskTitle);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'To-Do Today',
                style: TextStyle(fontSize: 30),
              )),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10, right: 5, left: 5),
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      title: Text(
                        _tasks[index].title,
                        style: TextStyle(
                            decoration: _tasks[index].isCompleted
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Checkbox(
                        value: _tasks[index].isCompleted,
                        onChanged: (value) {
                          _toggleTaskCompletion(index);
                        },
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              _showEditTaskDialog(index);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteTask(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTaskDialog,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
