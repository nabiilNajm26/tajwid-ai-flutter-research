class AppConstants {
  // App Info
  static const String appName = 'Tajwid Evaluation';
  static const String appVersion = '1.0.0';

  // Performance Targets
  static const int maxModelSizeMB = 50;
  static const int maxLatencyMs = 2000;
  static const double minAccuracyPercent = 85.0;

  // Audio Configuration
  static const int audioSampleRate = 16000;
  static const int minAudioDurationMs = 3000;
  static const int maxAudioDurationMs = 10000;

  // MFCC Configuration
  static const int nMfcc = 20;
  static const int nFft = 512;
  static const int hopLength = 160;

  // Model Configuration
  static const int featureVectorSize = 60; // 20 MFCC + 20 delta + 20 delta-delta

  // Storage Keys
  static const String historyBoxName = 'evaluation_history';
  static const String settingsBoxName = 'app_settings';
}
