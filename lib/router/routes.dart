import 'package:get/get.dart';
import 'package:workshop/main.dart';
import 'package:workshop/modules/todo/bindings/todo_binding.dart';
import 'package:workshop/modules/todo/ui/list_todo_page.dart';

class Routes {
  static List<GetPage<dynamic>>? getPages() {
    return [
      GetPage(
          name: ListTodoPage.routeName,
          page: () => const ListTodoPage(),
          binding: TodoBinding()),
      GetPage(name: HomePage.routeName, page: () => const HomePage()),
    ];
  }
}
