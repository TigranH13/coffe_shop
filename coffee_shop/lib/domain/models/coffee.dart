import 'package:json_annotation/json_annotation.dart';

part 'coffee.g.dart';

@JsonSerializable()
class Coffee {
  final String title;
  final String description;

  final List ingredients;

  final String image;
  final int id;

  Coffee(this.title, this.ingredients, this.image, this.id,
      {required this.description});

  factory Coffee.fromJson(Map<String, dynamic> json) => _$CoffeeFromJson(json);

  Map<String, dynamic> toJson() => _$CoffeeToJson(this);
}
