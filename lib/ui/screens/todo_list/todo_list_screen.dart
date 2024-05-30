import 'package:flutter/material.dart';
import 'package:sakib/entities/todo.dart';
import 'package:sakib/ui/screens/add_new_todo_screen.dart';
import 'package:sakib/ui/widgets/todo_item.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {

  List<Todo> _todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return TodoItem(todo: Todo('Title will be here', 'description', DateTime.now()),
            onIconButtonPressed: () {},);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Add New Todo',
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>AddNewTodoScreen()));
        },
        label: Text('Add'),
        icon: Icon(Icons.add)
      ),
    );
  }
}
