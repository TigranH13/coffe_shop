import 'package:flutter/material.dart';

import 'presentation/coffee/coffe_app.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.setup();

  runApp(const CoffeeApp());
}
