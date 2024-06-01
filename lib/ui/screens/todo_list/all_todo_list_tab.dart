import 'package:flutter/material.dart';
import 'package:sakib/entities/todo.dart';
import 'package:sakib/ui/widgets/empty_list.dart';
import 'package:sakib/ui/widgets/todo_item.dart';

class AllTodoListTab extends StatelessWidget {
  const AllTodoListTab(
      {super.key,
      required this.onDelete,
      required this.onStatusChange,
      required this.todoList});

  final List<Todo> todoList;
  final Function(int) onDelete;
  final Function(int) onStatusChange;

  @override
  Widget build(BuildContext context) {
    if (todoList.isEmpty) {
      return const EmptyListWidget();
    }

    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (_) {
            onDelete(index);
          },
          child: TodoItem(
            todo: todoList[index],
            onIconButtonPressed: () {
              onStatusChange(index);
            },
          ),
        );
      },
    );
  }
}
