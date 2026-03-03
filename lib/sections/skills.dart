import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Flutter',
      'Dart',
      'BLoC',
      'Provider',
      'Firebase',
      'SQLite',
      'NoSQL',
      'Multi-threading',
      'Flutter Background Service',
      'REST APIs',
      'Firebase Auth/Firestore',
      'Backend-driven UI',
      'Custom animations',
      'Analytics',
      'Crashlytics',
      'Git',
      'VS Code',
      'Android Studio',
      'React with TypeScript (Basic)',
      'Figma (basic)',
      'App Deployment (Play/App Store)',
      'GitHub Actions',
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Tech Skills',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills
                .map((s) => Chip(label: Text(s)))
                .toList(),
          ),
        ],
      ),
    );
  }
}
