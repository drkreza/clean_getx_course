import 'package:clean_getx_course/features/todo/domain/entities/todo.dart';
import 'package:clean_getx_course/features/todo/domain/repositories/todo_repository.dart';
import 'package:clean_getx_course/shared/errors/failure.dart';
import 'package:clean_getx_course/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';

/* class AddTodoUseCase {
  final TodoRepository repository;

  AddTodoUseCase(this.repository);

  Future<void> call(Todo todo) async {
    await repository.addTodo(todo);
  }
}
 */

class AddTodoUseCase implements UseCase<Todo, Params<Todo>> {
  final TodoRepository repository;

  AddTodoUseCase(this.repository);

  @override
  Future<Either<Failure, Todo>> call(Params todo) async {
    return await repository.addTodo(todo.data);
  }
}
