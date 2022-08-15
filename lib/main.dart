import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import '../pages/add_expensive.dart';
import '../pages/homepage.dart';
import '../providers/expense_provider.dart';
import '../providers/category_provider.dart';
import '../pages/launch_page.dart';
import '../providers/home_report_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => ExpenseProvider()),
        ChangeNotifierProvider(create: (_) => ReportProvider()),
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
      debugShowCheckedModeBanner: false,
      title: 'Kana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case AddExpensive.routeName:
            return MaterialWithModalsPageRoute(
              builder: (_) => const AddExpensive(),
              settings: settings,
            );
          case HomePage.routeName:
            return MaterialWithModalsPageRoute(
              builder: (_) => const HomePage(),
              settings: settings,
            );
        }

        return MaterialWithModalsPageRoute(
          builder: (_) => const LaunchPage(),
          settings: settings,
        );
      },
    );
  }
}
