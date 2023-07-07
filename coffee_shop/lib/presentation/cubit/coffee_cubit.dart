import 'package:coffe_shop/domain/models/coffee.dart';
import 'package:coffe_shop/domain/usecases/get_coffes_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'coffee_state.dart';

class CoffeeCubit extends Cubit<CoffeeState> {
  CoffeeCubit() : super(CoffeeState(coffes: [])) {
    getCoffees();
  }

  Future getCoffees() async {
    state.coffes = await GetCoffesImpls().call();

    emit(state);
  }
}
