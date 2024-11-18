import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: themeProvider.currentTheme.textTheme.bodyMedium?.copyWith(fontSize: 24),
        ),
      ),
    );
  }
}
