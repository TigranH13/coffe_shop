import 'package:coffe_shop/domain/models/coffee.dart';

abstract class CoffeRepositroy {
  Future<List<Coffee>> getCoffeList();
}
