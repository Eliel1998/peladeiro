import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:peladeiro/injector/modules/initialize_app_injection.dart';
import 'package:peladeiro/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
  GetIt getIt = GetIt.instance;
  InitializeAppInjection(getIt).register();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
