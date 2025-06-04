import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/app/constants/app_theme.dart';
import 'package:tech_taste/app/pages/home_screen.dart';
import 'app/pages/splash.dart';
import 'app/providers/app_provaider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        title: 'Tech Taste',
        initialRoute: '/splash',
        routes: {
          '/splash': (_) => SplashScreen(),
          '/home': (_) => const HomeScreen(),
        },
      ),
    );
  }
}
