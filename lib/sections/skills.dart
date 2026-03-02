import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tech Skills',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w700)),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: skills
                .map((s) => Chip(
                      label: Text(s,
                          style: GoogleFonts.inter(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      backgroundColor: Colors.blueGrey.shade200,
                      labelPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
