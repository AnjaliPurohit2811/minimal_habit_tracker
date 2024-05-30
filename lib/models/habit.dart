import 'package:isar/isar.dart';
// run cmd to generate file:

part 'habit.g.dart';

@collection
class Habit {
  // habit id
  Id id = Isar.autoIncrement;
  // String name
  late String name;
  // completed days
  List<DateTime> completedDays = [
    //DateTime(year,month,day),
    // DateTime(2024, 1, 1),
    // DateTime(2024, 1, 2),
  ];
}