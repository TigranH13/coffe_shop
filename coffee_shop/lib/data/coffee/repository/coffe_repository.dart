import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:coffe_shop/domain/coffee/repository/coffe_repository.dart';

import '../../../domain/coffee/models/coffee.dart';

class GetCoffeRepositroyImpl implements IGetCoffeRepositroy {
  final String serverIP = '192.168.0.101';
  final int serverPort = 3000;
  final client = http.Client();
  @override
  Future<List<Coffee>> getCoffeList() async {
    final response = await client.get(
      Uri.http('$serverIP:$serverPort', '/coffee'),
    );

    if (response.statusCode == 200) {
      List jsonList = json.decode(response.body);

      final List<Coffee> resultList = [];

      for (var el in jsonList) {
        resultList.add(Coffee.fromJson(el));
      }

      return resultList;
    } else {
      throw Error();
    }
  }
}
