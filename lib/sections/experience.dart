import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  Widget _buildJob(
      String title, String date, List<String> bullets, String company) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$title – $company',
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          Text(date, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 4),
          ...bullets.map((b) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 16)),
                  Expanded(child: Text(b)),
                ],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Work Experience',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _buildJob(
              'Senior Software Engineer - 1',
              'Oct 2022 – Present',
              [
                'Led a team of 3–4 Flutter developers in multiple projects involving complex UI development and API integrations.',
                'Conducted interviews, mentored interns, and handled onboarding, task allocation, and code reviews.',
                'Built a calendar-based event scheduling app with UI + voice command support using Gmail and Outlook APIs.',
                'Designed and implemented a file upload system for Gmail attachments entirely from scratch.',
                'Collaborated with clients to provide architectural input and deliver scalable, production-ready solutions.',
              ],
              'GeekyAnts, Bangalore'),
          _buildJob(
              'Software Engineer',
              'Oct 2020 – Sep 2022',
              [
                'Delivered full-cycle feature development including UI design, API integrations, database interactions, and state management (BLoC/Provider).',
                'Built modular codebases across 6+ Flutter projects with varying complexity.',
                'Recognized for clean development practices, quick turnaround, and effective collaboration.',
              ],
              ''),
          _buildJob(
              'Trainee Software Engineer',
              'Jan 2020 – Sep 2020',
              [
                'Trained in Flutter and contributed to small and mid-scale features in ongoing production apps.',
                'Developed solid foundational understanding of mobile architecture and cross-platform development.',
              ],
              ''),
        ],
      ),
    );
  }
}
