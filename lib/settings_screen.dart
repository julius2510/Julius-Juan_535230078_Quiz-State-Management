import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import '../theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Choose Theme:', style: TextStyle(fontSize: 18)),
            ListTile(
              title: const Text('Blue Theme'),
              onTap: () => themeProvider.changeTheme(AppThemes.blueTheme),
            ),
            ListTile(
              title: const Text('Red Theme'),
              onTap: () => themeProvider.changeTheme(AppThemes.redTheme),
            ),
            ListTile(
              title: const Text('Green Theme'),
              onTap: () => themeProvider.changeTheme(AppThemes.greenTheme),
            ),
            const Divider(),
            const Text('Choose Font:', style: TextStyle(fontSize: 18)),
            ListTile(
              title: const Text('Roboto'),
              onTap: () => themeProvider.changeFont('Roboto'),
            ),
            ListTile(
              title: const Text('Lobster'),
              onTap: () => themeProvider.changeFont('Lobster'),
            ),
            ListTile(
              title: const Text('Pacifico'),
              onTap: () => themeProvider.changeFont('Pacifico'),
            ),
          ],
        ),
      ),
    );
  }
}
