import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:mode/theme_modal.dart';
import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeModal(),
        child: Consumer(builder: (context, ThemeModal themeModal, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Material App',
              theme: themeModal.isDark ? ThemeData.dark() : ThemeData.light(),
              home: const HomePage());
        }));
  }
}
