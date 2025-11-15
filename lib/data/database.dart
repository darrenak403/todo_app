import 'package:hive_flutter/hive_flutter.dart' show Hive;

class ToDoDatabase {
  //list of to do tasks
  List toDoList = [];

  //reference the hive box
  final _myBox = Hive.box('mybox');

  //load data from hive
  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Do exercise', false],
    ];
  }

  //load data from hive
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
