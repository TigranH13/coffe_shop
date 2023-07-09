import '../models/coffee.dart';

abstract class GetCoffes {
  Future<List<Coffee>> call();
}
