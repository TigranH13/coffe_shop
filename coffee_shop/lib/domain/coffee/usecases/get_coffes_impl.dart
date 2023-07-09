import 'package:coffe_shop/domain/coffee/usecases/get_coffes.dart';

import '../models/coffee.dart';
import '../repository/coffe_repository.dart';

class GetCoffesImpls implements GetCoffes {
  final IGetCoffeRepositroy repositroy;

  GetCoffesImpls({required this.repositroy});

  @override
  Future<List<Coffee>> call() async {
    return await repositroy.getCoffeList();
  }
}
