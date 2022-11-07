import 'package:flutter/material.dart';
import 'package:phixlab_fb/utils/app_theme.dart';
import 'package:phixlab_fb/widgets/navigation_host.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const FacebookAppNavigationHost(),
    );
  }
}
