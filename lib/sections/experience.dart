import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  Widget _buildJob(
      String title, String date, List<String> bullets, String company) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              company.isNotEmpty ? '$title – $company' : title,
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600)),
          Text(date,
              style: GoogleFonts.inter(
                  color: Colors.grey[600], fontSize: 14)),
          const SizedBox(height: 8),
          ...bullets.map((b) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• ',
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Expanded(
                      child: Text(b,
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.black87,
                          )),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Work Experience',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w700)),
          const SizedBox(height: 24),
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
              'GeekyAnts, Bangalore'),
          _buildJob(
              'Trainee Software Engineer',
              'Jan 2020 – Sep 2020',
              [
                'Trained in Flutter and contributed to small and mid-scale features in ongoing production apps.',
                'Developed solid foundational understanding of mobile architecture and cross-platform development.',
              ],
              'GeekyAnts, Bangalore'),
        ],
      ),
    );
  }
}
