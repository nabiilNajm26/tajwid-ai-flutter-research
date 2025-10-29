import 'package:flutter/material.dart';

import 'core/constants/app_constants.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/screens/home_screen.dart';

/// Root application widget
///
/// Configures:
/// - MaterialApp with Material 3 theme
/// - Initial route (home screen)
/// - Debug banner settings
/// - App-wide navigation structure
class TajwidEvaluationApp extends StatelessWidget {
  const TajwidEvaluationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
