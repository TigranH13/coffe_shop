import '../models/coffee.dart';

abstract class IGetCoffeRepositroy {
  Future<List<Coffee>> getCoffeList();
}
