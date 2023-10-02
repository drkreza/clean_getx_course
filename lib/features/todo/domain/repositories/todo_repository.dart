import 'package:clean_getx_course/features/todo/domain/entities/todo.dart';
import 'package:clean_getx_course/shared/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class TodoRepository {
  Future<Either<Failure, Todo>> addTodo(Todo todo);
  Future<Either<Failure, Todo>> editTodo(Todo todo);
  Future<Either<Failure, Todo>> deleteTodo(Todo todo);
  Future<Either<Failure, List<Todo>>> getAll();
}
