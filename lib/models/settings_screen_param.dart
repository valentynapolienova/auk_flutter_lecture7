import 'package:flutter/material.dart';

class SettingsScreenParam {
  final ThemeMode currentThemeMode;
  final Function(ThemeMode) onThemeModeChanged;

  SettingsScreenParam({
    required this.currentThemeMode,
    required this.onThemeModeChanged,
  });
}
