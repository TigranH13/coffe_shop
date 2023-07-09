// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_shop/domain/coffee/usecases/get_coffes_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/coffee/models/coffee.dart';

part 'coffee_state.dart';

class CoffeeCubit extends Cubit<CoffeeState> {
  final GetCoffesImpls getCoffes;
  CoffeeCubit(
    this.getCoffes,
  ) : super(CoffeeState(coffes: [])) {
    getCoffees();
  }

  Future getCoffees() async {
    state.coffes = await getCoffes.call();

    emit(state);
  }
}
