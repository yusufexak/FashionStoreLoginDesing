import 'package:flutter/material.dart';
import 'package:logindesing/Utils/Constants/app_theme.dart';
import 'Views/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: AppTheme.myTheme,
      home: Login(),
    );
  }
}
