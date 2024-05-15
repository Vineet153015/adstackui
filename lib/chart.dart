import 'package:collection/collection.dart';

// ignore: camel_case_types
class Chartui{
  final double x;
  final double y;
  Chartui({required this.x, required this.y});
}

List<Chartui>get chartui{
  final data=<double>[6,4,5,7,6,10,6];
  return data.mapIndexed((index, element) => Chartui(x: index.toDouble(), y: element)).toList();
}

