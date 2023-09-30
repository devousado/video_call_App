import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_call/router/app_router.dart';
import 'package:video_call/view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: GoogleFonts.almarai(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
