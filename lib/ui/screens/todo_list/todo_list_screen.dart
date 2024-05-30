import 'package:flutter/material.dart';
import 'package:sakib/entities/todo.dart';
import 'package:sakib/ui/screens/add_new_todo_screen.dart';
import 'package:sakib/ui/screens/todo_list/all_todo_list_tab.dart';
import 'package:sakib/ui/screens/todo_list/done_todo_list_tab.dart';
import 'package:sakib/ui/screens/todo_list/undone_todo_list_tab.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> _todoList = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Todo List"),
          bottom: _buildTabBar(),
        ),
        body: const TabBarView(
          children: [
            AllTodoListTab(),
            UndoneTodoListTab(),
            DoneTodoListTab(),
          ],
        ),
        floatingActionButton: _buildAddTodoFAV(context),
      ),
    );
  }

  FloatingActionButton _buildAddTodoFAV(BuildContext context) {
    return FloatingActionButton.extended(
        tooltip: 'Add New Todo',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => const AddNewTodoScreen()));
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add));
  }

  TabBar _buildTabBar() {
    return const TabBar(
      tabs: [
        Tab(
          text: 'All',
        ),
        Tab(
          text: 'Undone',
        ),
        Tab(
          text: 'Done',
        )
      ],
    );
  }
}
