import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'core/utils/logger.dart';

/// Application entry point
///
/// Initializes:
/// - Hive local storage
/// - Riverpod for state management
/// - Flutter framework configuration
/// - System UI overlay styling
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for local storage
  await _initializeHive();

  // Configure system UI overlay
  _configureSystemUI();

  // Run app with Riverpod ProviderScope
  runApp(
    const ProviderScope(
      child: TajwidEvaluationApp(),
    ),
  );
}

/// Initialize Hive local storage
Future<void> _initializeHive() async {
  try {
    await Hive.initFlutter();
    AppLogger.i('Hive initialized successfully');
  } catch (e, stackTrace) {
    AppLogger.e('Failed to initialize Hive', e, stackTrace);
    // Continue without Hive - app can still function with degraded features
  }
}

/// Configure system UI overlay style
void _configureSystemUI() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  // Lock orientation to portrait only
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
