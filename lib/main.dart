import 'package:flutter/material.dart';
import 'package:phixlab_fb/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phixlab FB',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const FacebookAppNavigationHost(),
    );
  }
}

class FacebookAppNavigationHost extends StatefulWidget {
  const FacebookAppNavigationHost({Key? key}) : super(key: key);

  @override
  State<FacebookAppNavigationHost> createState() =>
      _FacebookAppNavigationHostState();
}

class _FacebookAppNavigationHostState extends State<FacebookAppNavigationHost> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is PHIXLAB")),
    );
  }
}
