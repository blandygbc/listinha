import 'package:flutter_test/flutter_test.dart';
import 'package:listinha/src/home/widgets/task_card.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';
import 'package:realm/realm.dart';

void main() {
  final board = TaskBoard(Uuid.v4(), 'Nova Lista de tarefas 1');
  testWidgets('getProgress should return 0.5', (tester) async {
    final tasks = [
      Task(Uuid.v4(), '', complete: true),
      Task(Uuid.v4(), '', complete: true),
      Task(Uuid.v4(), ''),
      Task(Uuid.v4(), ''),
    ];

    final progress = TaskCard(board: board).getProgress(tasks);
    expect(progress, 0.5);
  });
}
