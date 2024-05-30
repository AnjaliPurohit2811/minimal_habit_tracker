import 'package:flutter/material.dart';
import 'package:minimal_habit_tracker/pages/home_page.dart';
import 'package:minimal_habit_tracker/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:minimal_habit_tracker/database/habit_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize database
  await HabitDataBase.initialize();
  await HabitDataBase().saveFirstLaunchDate();
  runApp(MultiProvider(
    providers: [
      // habit provider
      ChangeNotifierProvider(create: (context) => HabitDataBase()),
      // theme provider
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         home: const HomePage(),
         theme: Provider.of<ThemeProvider>(context).themeData,
       );

  }
}
