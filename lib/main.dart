import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mlcloud/home.dart';
import 'package:showcaseview/showcaseview.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Builder(builder: (context) {
        return ShowCaseWidget(
            builder: Builder(
                builder: (context) =>
                    const MyHomePage(title: 'Welcome to CloudMl')));
      }),
    );
  }
}
