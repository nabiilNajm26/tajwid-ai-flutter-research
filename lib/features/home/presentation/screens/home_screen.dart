import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

/// Home screen - Main entry point of the application
///
/// Features (to be implemented):
/// - Navigation to audio recording
/// - Navigation to evaluation history
/// - Navigation to benchmark/comparison
/// - Quick stats display
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App logo placeholder
              const Icon(
                Icons.mic,
                size: 80,
                color: Colors.green,
              ),
              const SizedBox(height: 24),
              // App title
              Text(
                'Tajwid Evaluation',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              // App subtitle
              Text(
                'Comparative ML Classifier Study',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey[600],
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              // Feature cards
              _buildFeatureCard(
                context,
                icon: Icons.mic_none,
                title: 'Record Audio',
                subtitle: 'Evaluate Tajwid pronunciation',
                onTap: () {
                  // TODO: Navigate to recording screen
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Recording feature - Coming soon'),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              _buildFeatureCard(
                context,
                icon: Icons.history,
                title: 'Evaluation History',
                subtitle: 'View past evaluations',
                onTap: () {
                  // TODO: Navigate to history screen
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('History feature - Coming soon'),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              _buildFeatureCard(
                context,
                icon: Icons.analytics_outlined,
                title: 'Benchmark Results',
                subtitle: 'Compare classifier performance',
                onTap: () {
                  // TODO: Navigate to benchmark screen
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Benchmark feature - Coming soon'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
