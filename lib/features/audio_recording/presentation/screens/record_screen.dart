import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/colors.dart';
import '../../domain/entities/audio_data.dart';
import '../../domain/entities/recording_status.dart';
import '../controllers/audio_recording_controller.dart';

class RecordScreen extends ConsumerWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordingState = ref.watch(audioRecordingControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Record Tajwid'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Status Card
              _buildStatusCard(recordingState.status),

              const SizedBox(height: 32),

              // Duration Display
              _buildDurationDisplay(recordingState.durationMs),

              const Spacer(),

              // Error Message
              if (recordingState.errorMessage != null)
                _buildErrorMessage(recordingState.errorMessage!),

              // Audio Data Info
              if (recordingState.audioData != null)
                _buildAudioInfo(recordingState.audioData!),

              const SizedBox(height: 24),

              // Recording Controls
              _buildRecordingControls(context, ref, recordingState.status),

              const SizedBox(height: 16),

              // Instructions
              _buildInstructions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusCard(RecordingStatus status) {
    Color statusColor;
    IconData statusIcon;
    String statusText;

    switch (status) {
      case RecordingStatus.idle:
        statusColor = Colors.grey;
        statusIcon = Icons.mic_none;
        statusText = 'Ready to Record';
        break;
      case RecordingStatus.recording:
        statusColor = AppColors.error;
        statusIcon = Icons.fiber_manual_record;
        statusText = 'Recording...';
        break;
      case RecordingStatus.stopped:
        statusColor = AppColors.success;
        statusIcon = Icons.check_circle;
        statusText = 'Recording Complete';
        break;
      case RecordingStatus.error:
        statusColor = AppColors.error;
        statusIcon = Icons.error;
        statusText = 'Error';
        break;
      case RecordingStatus.paused:
        statusColor = AppColors.warning;
        statusIcon = Icons.pause_circle;
        statusText = 'Paused';
        break;
    }

    return Card(
      color: statusColor.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(statusIcon, color: statusColor, size: 32),
            const SizedBox(width: 16),
            Text(
              statusText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: statusColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDurationDisplay(int durationMs) {
    final seconds = (durationMs / 1000).floor();
    final minutes = (seconds / 60).floor();
    final remainingSeconds = seconds % 60;

    return Center(
      child: Text(
        '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}',
        style: const TextStyle(
          fontSize: 64,
          fontWeight: FontWeight.w300,
          fontFeatures: [FontFeature.tabularFigures()],
        ),
      ),
    );
  }

  Widget _buildErrorMessage(String message) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.error.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline, color: AppColors.error),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: AppColors.error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAudioInfo(AudioData audioData) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.success.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.success.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoRow('Duration', audioData.durationFormatted),
          const SizedBox(height: 8),
          _buildInfoRow('Size', audioData.fileSizeFormatted),
          const SizedBox(height: 8),
          _buildInfoRow('Sample Rate', '${audioData.sampleRate} Hz'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildRecordingControls(
    BuildContext context,
    WidgetRef ref,
    RecordingStatus status,
  ) {
    if (status == RecordingStatus.stopped) {
      // Show "New Recording" and "Use This Recording" buttons
      return Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {
                ref.read(audioRecordingControllerProvider.notifier).reset();
              },
              icon: const Icon(Icons.refresh),
              label: const Text('New Recording'),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: FilledButton.icon(
              onPressed: () {
                // TODO: Navigate to evaluation screen
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Evaluation feature coming soon!'),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Evaluate'),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
            ),
          ),
        ],
      );
    }

    // Show Start/Stop recording button
    return SizedBox(
      width: double.infinity,
      height: 64,
      child: FilledButton.icon(
        onPressed: status.canStartRecording
            ? () {
                ref
                    .read(audioRecordingControllerProvider.notifier)
                    .startRecording();
              }
            : status.canStopRecording
                ? () {
                    ref
                        .read(audioRecordingControllerProvider.notifier)
                        .stopRecording();
                  }
                : null,
        icon: Icon(
          status.canStartRecording ? Icons.mic : Icons.stop,
          size: 32,
        ),
        label: Text(
          status.canStartRecording ? 'Start Recording' : 'Stop Recording',
          style: const TextStyle(fontSize: 18),
        ),
        style: FilledButton.styleFrom(
          backgroundColor:
              status.isRecording ? AppColors.error : AppColors.primary,
        ),
      ),
    );
  }

  Widget _buildInstructions() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryLight.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recording Tips:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '• Record in a quiet environment\n'
            '• Speak clearly at normal pace\n'
            '• Duration: 3-10 seconds recommended\n'
            '• Hold device 15-20cm from mouth',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
