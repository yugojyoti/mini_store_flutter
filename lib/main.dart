import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mini_store/consts/global_colors.dart';

import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mini Store",
      theme: ThemeData(
          scaffoldBackgroundColor: lightScaffoldColor,
          primaryColor: lightCardColor,
          backgroundColor: lightBackground,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: lightIconsColor),
            backgroundColor: lightScaffoldColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: lightTextColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            elevation: 0,
          ),
          iconTheme: IconThemeData(
            color: lightTextColor,
          ),
          textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colors.black, selectionColor: Colors.blue),
          cardColor: lightCardColor,
          brightness: Brightness.light,
          colorScheme: ThemeData().colorScheme.copyWith(
              secondary: lightIconsColor, brightness: Brightness.light)),
      home: HomeScreen(),
    );
  }
}
