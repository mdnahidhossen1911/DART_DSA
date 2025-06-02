import 'dart:core';
import 'package:dart_problem_solving/sorting/selection_sort.dart';

void main() async {
  final stopwatch = Stopwatch()..start();

  print("Nahid");

  print(SelectionSort.selectionSort([3,5,3,6,7,8,2,134,6,75,45,3,23]));

  stopwatch.stop();
  print('Operation completed in: ${stopwatch.elapsedMilliseconds} ms');
}
