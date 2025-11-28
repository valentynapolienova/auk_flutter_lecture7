import 'package:flutter/material.dart';
import 'package:lecture5/models/settings_screen_param.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  const SettingsScreen({required this.param, super.key});

  final SettingsScreenParam param;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _useDarkTheme;

  @override
  void initState() {
    _useDarkTheme = widget.param.currentThemeMode == ThemeMode.dark;
    super.initState();
  }

  void _toggleTheme(bool isDarkTheme) {
    setState(() {
      _useDarkTheme = isDarkTheme;
    });
    widget.param.onThemeModeChanged(
      isDarkTheme ? ThemeMode.dark : ThemeMode.light,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Use dark theme'),
            subtitle: Text(
              'Switch between light and dark mode.',
              style: theme.textTheme.bodySmall,
            ),
            value: _useDarkTheme,
            onChanged: _toggleTheme,
          ),
        ],
      ),
    );
  }
}
