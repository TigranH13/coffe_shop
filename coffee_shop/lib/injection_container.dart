import 'package:coffe_shop/application/cubit/coffee_cubit.dart';
import 'package:coffe_shop/data/coffee/repository/coffe_repository.dart';
import 'package:coffe_shop/domain/coffee/repository/coffe_repository.dart';

import 'package:coffe_shop/domain/coffee/usecases/get_coffes_impl.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  sl.registerFactory<CoffeeCubit>(
    () => CoffeeCubit(
      sl(),
    ),
  );

  sl.registerLazySingleton<GetCoffesImpls>(
    () => GetCoffesImpls(
      repositroy: sl(),
    ),
  );

  sl.registerLazySingleton<IGetCoffeRepositroy>(() => GetCoffeRepositroyImpl());
}
