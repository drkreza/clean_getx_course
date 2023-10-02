import '../../../domain/entities/todo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class TodoRemoteDatabase {
  Future<Todo> addTodo(Todo todo);
  Future<Todo> editTodo(Todo todo);
  Future<Todo> deleteTodo(Todo todo);
  Future<List<Todo>> getAll();
}

class TodoRemoteDatabaseImpl implements TodoRemoteDatabase {
  @override
  Future<Todo> addTodo(Todo todo) async {
    await FirebaseFirestore.instance
        .collection('todos')
        .doc(todo.id)
        .set(todo.toMap());
    return todo;
  }

  @override
  Future<Todo> deleteTodo(Todo todo) async {
    await FirebaseFirestore.instance.collection('todos').doc(todo.id).delete();
    return todo;
  }

  @override
  Future<Todo> editTodo(Todo todo) async {
    await FirebaseFirestore.instance
        .collection('todos')
        .doc(todo.id)
        .update(todo.toMap());
    return todo;
  }

  @override
  Future<List<Todo>> getAll() async {
    final todoData = await FirebaseFirestore.instance.collection('todos').get();
    return todoData.docs.map((item) => Todo.fromMap(item.data())).toList();
  }
}
