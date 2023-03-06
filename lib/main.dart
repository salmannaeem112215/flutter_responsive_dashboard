import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/main/main_screen.dart';
import './constants.dart';
import 'package:provider/provider.dart';

import 'controllers/custom_menu_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // if (MediaQuery.of(context).size.width < 100) return const SizedBox();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CustomMenuController(),
          )
        ],
        child: const MainScreen(),
      ),
    );
  }
}
