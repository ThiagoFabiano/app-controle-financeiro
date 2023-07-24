import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/home.dart';
import 'main.controller.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  runApp(const Sisp());
}

class Sisp extends StatelessWidget {
  const Sisp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AnimatedBuilder(
      animation: MainController.instance,
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          scaffoldMessengerKey: scaffoldKey,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(255, 1, 26, 72)),
            useMaterial3: true,
            textTheme: GoogleFonts.montserratTextTheme(textTheme)
          ),
          routes: {
            '/': (context) => const Home(),
          },
        );
      },
    );
  }
}
