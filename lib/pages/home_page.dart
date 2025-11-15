import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of to-do items
  List toDoList = [
    ['Buy groceries', false],
    ['Walk the dog', false],
    ['Read a book', false],
  ];

  void checkButtonChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text('Todo App'), elevation: 0),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) {
              checkButtonChanged(value, index);
            },
          );
        },
      ),
    );
  }
}
