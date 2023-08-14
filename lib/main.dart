import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workshop/modules/todo/ui/list_todo_page.dart';
import 'package:workshop/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.dark,
        title: 'Workshop',
        getPages: Routes.getPages());
  }
}

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(ListTodoPage.routeName),
        tooltip: 'Todo',
        backgroundColor: Colors.green,
        child: Icon(
          Icons.mediation,
          color: Colors.green[100],
        ),
      ),
    );
  }
}
