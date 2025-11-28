import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture5/models/settings_screen_param.dart';
import 'package:lecture5/screens/details_screen.dart';
import 'models/pet.dart';
import 'screens/home_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _updateThemeMode(ThemeMode newMode) {
    setState(() {
      _themeMode = newMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Adoption',
      debugShowCheckedModeBanner: false,
      theme: _lightTheme,
      darkTheme: _darkTheme,
      themeMode: _themeMode,
      home: HomeScreen(
        currentThemeMode: _themeMode,
        onThemeModeChanged: _updateThemeMode,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == PetDetailScreen.routeName) {
          final pet = settings.arguments as Pet;
          return MaterialPageRoute(builder: (_) => PetDetailScreen(pet: pet));
        }
        if (settings.name == SettingsScreen.routeName) {
          final param = settings.arguments as SettingsScreenParam;
          return MaterialPageRoute(
            builder: (_) => SettingsScreen(param: param),
          );
        }
        return null;
      },
    );
  }

  ThemeData get _lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      useMaterial3: true,
      textTheme: GoogleFonts.aBeeZeeTextTheme(
        ThemeData(brightness: Brightness.light).textTheme,
      ),
    );
  }

  ThemeData get _darkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: Brightness.dark,
      ),
      textTheme: GoogleFonts.aBeeZeeTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme,
      ),
    );
  }
}
