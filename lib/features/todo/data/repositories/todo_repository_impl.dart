import 'package:clean_getx_course/features/todo/data/datasource/remote/todo_remote_database.dart';
import 'package:clean_getx_course/features/todo/domain/entities/todo.dart';
import 'package:clean_getx_course/features/todo/domain/repositories/todo_repository.dart';
import 'package:clean_getx_course/shared/errors/failure.dart';
import 'package:dartz/dartz.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDatabase remoteDatabase;

  TodoRepositoryImpl({
    required this.remoteDatabase,
  });

  @override
  Future<Either<Failure, Todo>> addTodo(Todo todo) async {
    try {
      final result = await remoteDatabase.addTodo(todo);
      return Right(result);
    } catch (e) {
      return Left(Failure('Oops something went wrong when adding todo'));
    }
  }

  @override
  Future<Either<Failure, Todo>> deleteTodo(Todo todo) async {
    try {
      final result = await remoteDatabase.deleteTodo(todo);
      return Right(result);
    } catch (e) {
      return Left(Failure('Oops something went wrong when deleting todo'));
    }
  }

  @override
  Future<Either<Failure, Todo>> editTodo(Todo todo) async {
    try {
      final result = await remoteDatabase.editTodo(todo);
      return Right(result);
    } catch (e) {
      return Left(Failure('Oops something went wrong when editing todo'));
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getAll() async {
    try {
      final result = await remoteDatabase.getAll();
      return Right(result);
    } catch (e) {
      return Left(Failure('Oops something went wrong when getting todo list'));
    }
  }
}
