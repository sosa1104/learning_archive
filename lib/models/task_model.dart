import 'package:uuid/uuid.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final String id;
  String name;
  final DateTime createdAt;
  bool isCompleted;
  Task({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.isCompleted,
  });

  factory Task.created({
    required String name,
    required DateTime createdAt,
  }) {
    return Task(
        id: const Uuid().v1(),
        name: name,
        createdAt: createdAt,
        isCompleted: false);
  }
}
