import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dependency_injection.dart';
import 'presentation/app.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await DependencyInjection.configureDependencies();
  runApp(const App());
}
