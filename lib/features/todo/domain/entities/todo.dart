import 'dart:convert';

class Todo {
  final String id;
  final String text;
  final String description;
  Todo({
    required this.id,
    required this.text,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'text': text});
    result.addAll({'description': description});
  
    return result;
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] ?? '',
      text: map['text'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));
}
