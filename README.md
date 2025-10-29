# Tajwid Evaluation Mobile Application

A comparative study of machine learning classifiers for evaluating Quranic Tajwid rules on Android devices.

## Overview

This mobile application implements and compares four machine learning classifiers (Support Vector Machine, Random Forest, Multi-Layer Perceptron, and Long Short-Term Memory) for evaluating three fundamental Tajwid rules in Quranic recitation: Madd (elongation), Ghunnah (nasalization), and Ikhfaa (concealment). The study focuses on analyzing trade-offs between model size, accuracy, and inference latency on mid-range Android devices.

## Research Context

**Institution:** Universitas Islam Indonesia (UII)
**Department:** Informatics Engineering
**Research Focus:** Mobile Machine Learning for Arabic Speech Processing
**Target Platform:** Android 5.0+ (API 21+), optimized for Snapdragon 700 series

## Key Features

- **Multi-Classifier Comparison**: Evaluate pronunciation using four different ML models simultaneously
- **Real-time Audio Analysis**: Record and analyze Tajwid rules with immediate feedback
- **Performance Benchmarking**: Measure and compare model size, accuracy, and latency metrics
- **Trade-off Visualization**: Pareto front and radar charts for multi-dimensional analysis
- **Device-Aware Recommendations**: Smart classifier selection based on device capabilities
- **Research-Grade Metrics**: Export detailed evaluation results for academic analysis

## Technical Architecture

### Architecture Pattern
- **Clean Architecture** with Feature-First modularization
- **Riverpod** for reactive state management
- **TensorFlow Lite** for on-device inference with NNAPI hardware acceleration

### Technology Stack

```yaml
Framework: Flutter 3.35.7
Language: Dart 3.9.2
ML Runtime: TensorFlow Lite 0.11.0
Audio Processing: Flutter Sound 9.2.13
State Management: Riverpod 2.4.9
Data Persistence: Hive 2.2.3
Visualization: FL Chart 0.65.0
```

### Dataset

This application uses the **QDAT (Quranic Dataset for Audio Tajweed)** dataset published by Al Harere & Al Jallad (2023). The dataset contains approximately 1,500 audio samples covering various Tajwid rules.

**Citation:**
```
Al Harere, S., & Al Jallad, K. (2023). QDAT: Quranic Dataset for Audio Tajweed.
arXiv preprint arXiv:2305.06429.
```

## Tajwid Rules Evaluated

### 1. Madd (Elongation)
Duration-based rule requiring vowel prolongation according to specific counts (1-6 harakats). Learner error rate: 14%.

### 2. Ghunnah (Nasalization)
Spectral-based rule requiring nasal sound production for approximately 300ms. Learner error rate: 23%.

### 3. Ikhfaa (Concealment)
Context-dependent rule requiring partial nasalization when noon/tanween precedes 16 specific letters. Learner error rate: 40-45%.

## Performance Targets

| Metric | Target | Rationale |
|--------|--------|-----------|
| Model Size | < 50 MB total | Support for devices with limited storage |
| Accuracy | > 85% per rule | Acceptable for educational applications |
| Latency | < 2 seconds | Maintain interactive user experience |

## Project Structure

```
lib/
├── core/                 # Shared utilities and constants
├── features/             # Feature modules (Clean Architecture)
│   ├── audio_recording/
│   ├── feature_extraction/
│   ├── ml_inference/
│   ├── comparative_analysis/
│   ├── benchmark/
│   └── history/
└── shared/              # Shared widgets and providers

assets/
└── models/              # TFLite models (12 files: 4 classifiers × 3 rules)
```

## Development Setup

### Prerequisites

- Flutter SDK 3.35.7 or later
- Android SDK (API level 21+)
- Android Studio or VS Code with Flutter extensions
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/nabiilNajm26/tajwid-ai-flutter-research.git
cd tajwid-ai-flutter-research
```

2. Install dependencies:
```bash
flutter pub get
```

3. Generate code (Riverpod, Freezed):
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run the application:
```bash
flutter run
```

## Model Training

The machine learning models are trained separately using Python and TensorFlow/Keras. Training scripts and model conversion pipelines are maintained in a separate repository for reproducibility.

**Model specifications:**
- Input: 60-dimensional feature vectors (20 MFCC + 20 delta + 20 delta-delta coefficients)
- Output: Binary classification (correct/incorrect pronunciation)
- Optimization: INT8 post-training quantization for mobile deployment

## Testing

Run the test suite:
```bash
# Unit and widget tests
flutter test

# Integration tests
flutter test integration_test/

# Coverage report
flutter test --coverage
```

**Coverage target:** 70% or higher

## Research Methodology

This application serves as the experimental platform for a comparative study following these steps:

1. **Audio Acquisition**: Record or upload 3-10 second audio samples
2. **Feature Extraction**: Compute MFCC features using platform-specific implementations
3. **Inference**: Run all four classifiers in parallel using TensorFlow Lite
4. **Analysis**: Calculate performance metrics and generate trade-off visualizations
5. **Evaluation**: Compare results against baseline accuracies from literature

## Expected Outcomes

Based on preliminary analysis and literature review, expected performance ranges:

| Classifier | Accuracy Range | Model Size | Latency |
|------------|---------------|------------|---------|
| SVM | 79-85% | < 1 MB | ~500 ms |
| Random Forest | 88-91% | 10-12 MB | ~1200 ms |
| MLP | 81-85% | 5-6 MB | ~900 ms |
| LSTM | 95-96% | 3-4 MB | ~850 ms |

## Contributing

This is a research project for academic purposes. Contributions are limited to:

- Bug reports and fixes
- Performance optimization suggestions
- Documentation improvements

Please open an issue before submitting pull requests.

## License

This project is developed for academic research purposes. Model files and dataset are subject to their respective licenses. Please refer to the original publications for usage terms.

## Acknowledgments

- **Dataset**: QDAT by Al Harere & Al Jallad (2023)
- **Baseline Research**: Al Harere & Al Jallad's work on Tajwid classification using LSTM
- **Framework**: Flutter team for cross-platform development tools
- **Libraries**: TensorFlow Lite, Riverpod, and Flutter community packages

## Contact

**Researcher:** Nabiil Najm
**Institution:** Universitas Islam Indonesia 
**Email:** [Uni](nabil.najmudin@students.uii.ac.id) | [Personal](nabiil.najm266@gmail.com)
**GitHub:** [@nabiilNajm26](https://github.com/nabiilNajm26)

## References

1. Al Harere, S., & Al Jallad, K. (2023). Deep Learning for Quranic Tajweed Rule Classification. *arXiv preprint arXiv:2305.06429*.

2. Hassan, S. M., et al. (2013). Analysis of Tajweed Errors in Quranic Recitation. *International Journal of Islamic Studies*.

3. Shafie, S. A., et al. (2022). Automatic Evaluation of Madd Rules Using Dynamic Time Warping. *Journal of Speech Processing*.

---

**Note:** This application is designed for research and educational purposes. Results should be validated by qualified Tajwid instructors before use in formal assessment contexts.
