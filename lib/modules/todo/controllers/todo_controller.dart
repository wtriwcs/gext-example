import 'dart:developer';

import 'package:get/get.dart';
import 'package:workshop/modules/todo/services/todo_service.dart';

import '../models/todo_model.dart';

class TodoController extends GetxController {
  // final log = Logger();

  List<TodoModel> listTodo = [];

  @override
  void onInit() {
    getListTodo();
    super.onInit();
  }

  void getListTodo() async {
    listTodo.clear();
    update();
    final todoService = TodoService.instance.restClientApi;
    try {
      final results = await todoService.getTodos();
      listTodo = results;
    } catch (e) {
      log(e.toString());
    }
    update();
  }
}
