import 'package:clean_getx_course/features/todo/domain/entities/todo.dart';
import 'package:clean_getx_course/features/todo/domain/repositories/todo_repository.dart';
import 'package:clean_getx_course/shared/errors/failure.dart';
import 'package:clean_getx_course/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';

class DeleteTodoUseCase implements UseCase<Todo, Params<Todo>> {
  final TodoRepository repository;

  DeleteTodoUseCase(this.repository);

  @override
  Future<Either<Failure, Todo>> call(Params<Todo> todo) async{
    return await repository.deleteTodo(todo.data);
  }
}
