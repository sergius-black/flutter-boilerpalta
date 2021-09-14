import 'package:boilerpalta/src/dependency_injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  runApp(const MyApp());
}
