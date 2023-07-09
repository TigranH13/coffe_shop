import 'package:coffe_shop/core/configs/app_colors.dart';

import 'package:flutter/material.dart';

import '../../../domain/coffee/models/coffee.dart';

class DetailScreen extends StatelessWidget {
  final Coffee currentCoffee;
  const DetailScreen({
    super.key,
    required this.currentCoffee,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backGroundColor,
        title: Center(
          child: Text(
            currentCoffee.title,
            style: const TextStyle(
                color: textColor, fontSize: 25, fontWeight: FontWeight.w300),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: textColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height / 2.5,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Image.network(
                  currentCoffee.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ingredients',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: currentCoffee.ingredients.length,
                      itemBuilder: (context, index) => Text(
                        "• ${currentCoffee.ingredients[index]}",
                        style: const TextStyle(
                          fontSize: 15,
                          color: textColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      currentCoffee.description,
                      style: const TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
