import 'dart:convert';

class TTask {
  int id;
  String? task;
  bool completed;
  TTask({
    required this.id,
    this.task,
    required this.completed,
  });
  // TTask(this.id, {this.task, this.completed});

  TTask copyWith({
    int? id,
    String? task,
    bool? completed,
  }) {
    return TTask(
      id: id ?? this.id,
      task: task ?? this.task,
      completed: completed ?? this.completed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'task': task,
      'completed': completed,
    };
  }

  factory TTask.fromMap(Map<String, dynamic> map) {
    return TTask(
      id: map['id']?.toInt() ?? 0,
      task: map['task'],
      completed: map['completed'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TTask.fromJson(String source) => TTask.fromMap(json.decode(source));

  @override
  String toString() => 'TTask(id: $id, task: $task, completed: $completed)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TTask &&
        other.id == id &&
        other.task == task &&
        other.completed == completed;
  }

  @override
  int get hashCode => id.hashCode ^ task.hashCode ^ completed.hashCode;
}
