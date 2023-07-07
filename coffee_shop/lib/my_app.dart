import 'package:coffe_shop/presentation/cubit/coffee_cubit.dart';
import 'package:coffe_shop/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeCubit(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
