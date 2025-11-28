import 'package:flutter/material.dart';
import 'package:lecture5/models/settings_screen_param.dart';
import '../models/pet.dart';
import '../widgets/pet_card.dart';
import 'details_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.currentThemeMode,
    required this.onThemeModeChanged,
  });

  final ThemeMode currentThemeMode;
  final ValueChanged<ThemeMode> onThemeModeChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Pet Adoption'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(
                context,
                SettingsScreen.routeName,
                arguments: SettingsScreenParam(
                  currentThemeMode: currentThemeMode,
                  onThemeModeChanged: onThemeModeChanged,
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isDark
                ? const [Color(0xFF003030), Color(0xFF00181A)]
                : const [Color(0xFF008080), Color(0xFF4DB6AC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: mockPets.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final pet = mockPets[index];
              return PetCard(
                pet: pet,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    PetDetailScreen.routeName,
                    arguments: pet,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
