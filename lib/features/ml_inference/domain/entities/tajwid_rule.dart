/// Enum representing the three Tajwid rules evaluated by the application.
///
/// These rules are fundamental in Quranic recitation and have different
/// acoustic characteristics and error rates among learners.
enum TajwidRule {
  /// Madd (Elongation) - Duration-based rule
  ///
  /// Requires vowel prolongation according to specific counts (1-6 harakats).
  /// Learner error rate: 14%
  /// Acoustic feature: Duration measurement (onset/offset detection)
  madd('Madd', 'Elongation', 14),

  /// Ghunnah (Nasalization) - Spectral-based rule
  ///
  /// Requires nasal sound production for approximately 300ms (2 harakats).
  /// Learner error rate: 23%
  /// Acoustic feature: Nasal formant tracking (F1 shift 200-300Hz)
  ghunnah('Ghunnah', 'Nasalization', 23),

  /// Ikhfaa (Concealment) - Context-dependent rule
  ///
  /// Requires partial nasalization when noon/tanween precedes 16 specific letters.
  /// Learner error rate: 40-45% (highest among 3 rules)
  /// Acoustic feature: Phonetic blending detection + context analysis
  ikhfaa('Ikhfaa', 'Concealment', 42);

  const TajwidRule(this.arabicName, this.englishName, this.errorRate);

  /// Arabic name of the rule
  final String arabicName;

  /// English name/translation of the rule
  final String englishName;

  /// Average learner error rate (percentage)
  final int errorRate;

  /// Display name combining Arabic and English
  String get displayName => '$arabicName ($englishName)';

  /// Get rule description
  String get description {
    switch (this) {
      case TajwidRule.madd:
        return 'Duration-based rule requiring vowel prolongation according to '
            'specific counts (1-6 harakats). Error rate: $errorRate%';
      case TajwidRule.ghunnah:
        return 'Spectral-based rule requiring nasal sound production for '
            'approximately 300ms. Error rate: $errorRate%';
      case TajwidRule.ikhfaa:
        return 'Context-dependent rule requiring partial nasalization when '
            'noon/tanween precedes 16 specific letters. Error rate: $errorRate%';
    }
  }
}
