import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return TodoItem();
        },
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text('Title'),
        subtitle: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Description'), Text('Time')],
        ),
        trailing: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.check),
            label: const Text('')),
      ),
    );
  }
}
