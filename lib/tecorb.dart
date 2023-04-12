import 'package:hive/hive.dart';
part 'tecorb.g.dart';

@HiveType(typeId: 1)
class Tecorb {
  @HiveField(0)
  String name;

  @HiveField(1)
  String tech;

  Tecorb({
    required this.name,
    required this.tech,
  });
}
