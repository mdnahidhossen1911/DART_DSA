import 'dart:core';
import 'searching/searching.dart';

void main() async {
  final stopwatch = Stopwatch()..start();

  print("Nahid");

  print(Searching.binarySearch(
      [1, 3, 5, 7, 8, 9, 12, 23, 43, 55, 67, 76, 89], 55));

  stopwatch.stop();
  print('Operation completed in: ${stopwatch.elapsedMilliseconds} ms');
}
