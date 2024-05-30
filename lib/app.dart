import 'package:flutter/material.dart';
import 'package:sakib/ui/screens/todo_list/todo_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
      theme: _lightTheme(),
    );
  }

  ThemeData _lightTheme() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(double.maxFinite),
          padding: EdgeInsets.symmetric(vertical: 12)
        )
      )
    );
  }
}
