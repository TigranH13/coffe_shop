import 'package:coffe_shop/core/configs/app_colors.dart';

import 'package:coffe_shop/presentation/coffee/screens/detail_screen.dart';
import 'package:coffe_shop/presentation/coffee/widgets/coffe_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/cubit/coffee_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: backGroundColor,
          title: const Center(
            child: Text(
              'Coffee',
              style: TextStyle(
                  color: textColor, fontSize: 25, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        body: BlocBuilder<CoffeeCubit, CoffeeState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: state.coffes.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 4.9 / 6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  final coffe = state.coffes[index];
                  return CoffeeTile(
                    imageUrl: coffe.image,
                    title: coffe.title,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(currentCoffee: coffe),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
