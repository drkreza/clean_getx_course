import 'package:clean_getx_course/features/todo/domain/entities/todo.dart';
import 'package:clean_getx_course/features/todo/domain/repositories/todo_repository.dart';
import 'package:clean_getx_course/shared/errors/failure.dart';
import 'package:clean_getx_course/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';

class ListTodoUseCase implements UseCase<List<Todo>, NoParams> {
  final TodoRepository repository;

  ListTodoUseCase(this.repository);

  @override
  Future<Either<Failure, List<Todo>>> call(NoParams params) async {
    return await repository.getAll();
  }
}
