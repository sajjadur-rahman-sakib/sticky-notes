import 'package:flutter/material.dart';
import 'package:sakib/entities/todo.dart';
import 'package:sakib/ui/widgets/todo_item.dart';

class AllTodoListTab extends StatelessWidget {
  const AllTodoListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (_) {

          },
          child: TodoItem(
            todo: Todo('Title will be here', 'description', DateTime.now()),
            onIconButtonPressed: () {},
          ),
        );
      },
    );
  }
}
