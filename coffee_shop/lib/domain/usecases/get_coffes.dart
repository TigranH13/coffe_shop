import 'package:coffe_shop/domain/models/coffee.dart';

abstract class GetCoffes {
  Future<List<Coffee>> call();
}
