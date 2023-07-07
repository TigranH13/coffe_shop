import 'package:coffe_shop/data/datasources/coffe_repository.dart';
import 'package:coffe_shop/domain/models/coffee.dart';
import 'package:coffe_shop/domain/usecases/get_coffes.dart';

class GetCoffesImpls implements GetCoffes {
  final CoffeRepositroyImpl getCoffee = CoffeRepositroyImpl();
  @override
  Future<List<Coffee>> call() async {
    return await getCoffee.getCoffeList();
  }
}
