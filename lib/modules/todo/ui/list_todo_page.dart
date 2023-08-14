import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workshop/modules/todo/controllers/todo_controller.dart';

class ListTodoPage extends StatelessWidget {
  static const routeName = '/todo-list';

  const ListTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Todo')),
      body: GetBuilder<TodoController>(builder: (controller) {
        // for (var e in controller.listTodo) {
        //   log(e.title);
        // }
        return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.listTodo.length,
            itemBuilder: (context, i) => Dismissible(
                key: UniqueKey(),
                child: RefreshIndicator(
                  onRefresh: () async {
                    controller.getListTodo();
                  },
                  child: ListTile(
                    title: Text(controller.listTodo[i].title),
                  ),
                )));
      }),
    );
  }
}
