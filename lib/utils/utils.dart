import 'package:drift/drift.dart';
import 'package:intl/intl.dart';

/// This function takes an iterable of boolean expressions and builds an AND expression from them.
/// If the iterable is empty, it returns a constant true expression.
/// Otherwise, it reduces the iterable to a single expression using the & operator, and checks if the result equals true.
Expression<bool> buildAnd(Iterable<Expression<bool>> iterable) {
  if (iterable.isEmpty) return const Constant(true);
  final result = iterable.reduce((value, element) => value & element);

  return result.equals(true);
}

/// This function takes an iterable of boolean expressions and builds an OR expression from them.
/// If the iterable is empty, it returns a constant true expression.
/// Otherwise, it reduces the iterable to a single expression using the | operator, and checks if the result equals true.
Expression<bool> buildOr(Iterable<Expression<bool>> iterable) {
  if (iterable.isEmpty) return const Constant(true);
  final result = iterable.reduce((value, element) => value | element);

  return result.equals(true);
}

String getDateFromTimestamp(int timestamp, {String? dateFormat}) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
  return DateFormat(dateFormat ?? 'yyyy-MM-dd HH:mm').format(date);
}
