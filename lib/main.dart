import 'dart:core';
import 'searching/searching.dart';

void main() async {
  final stopwatch = Stopwatch()..start();

  print("Nahid");

  // Linear searching
  print(await Searching.linearSearch([60, 1, 88, 10, 11, 100], 100));

  stopwatch.stop();
  print('Operation completed in: ${stopwatch.elapsedMilliseconds} ms');
}


