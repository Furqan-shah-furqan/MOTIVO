import 'package:flutter/material.dart';
import 'package:motivo/Home/new_home.dart';
import 'package:motivo/Service/quote_service.dart';
import 'package:motivo/Theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => QuoteService()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: NewHome(),
    );
  }
}
