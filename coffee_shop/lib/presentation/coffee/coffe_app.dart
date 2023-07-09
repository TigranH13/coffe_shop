import 'package:coffe_shop/injection_container.dart';
import 'package:coffe_shop/presentation/coffee/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/cubit/coffee_cubit.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CoffeeCubit>(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
