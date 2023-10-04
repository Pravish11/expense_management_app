import 'package:expense_management_app/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Manager',
      themeMode: ThemeMode.system,
      theme: MyThemes(context).lightTheme,
      darkTheme: MyThemes(context).darkTheme,
      initialRoute: RouteName.initialRoute,
      onGenerateRoute: RouteName.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
