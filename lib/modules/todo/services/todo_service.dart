import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:workshop/modules/todo/models/todo_model.dart';
import 'package:workshop/utils/api_util.dart';

part 'todo_service.g.dart';

@RestApi(baseUrl: ApiUtil.baseUrl)
abstract class RestClientApi {
  factory RestClientApi(Dio dio, {String baseUrl}) = _RestClientApi;

  @GET(ApiUtil.todos)
  Future<List<TodoModel>> getTodos();
}

class TodoService {
  TodoService._();

  static final TodoService _todoService = TodoService._();
  static TodoService get instance => _todoService;

  RestClientApi get restClientApi =>
      RestClientApi(_buildDioClient(ApiUtil.baseUrl));

  Dio _buildDioClient(String baseUrl) {
    final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);
    dio.interceptors.addAll([LogInterceptor()]);
    return dio;
  }
}
