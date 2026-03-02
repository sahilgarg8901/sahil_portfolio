import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About Me',
                  style: GoogleFonts.poppins(
                      fontSize: 36, fontWeight: FontWeight.w700)),
              const SizedBox(height: 24),
              Text(
                  'Senior Flutter Developer with over 5 years of experience building scalable, cross-platform mobile applications using Flutter. Proven track record in delivering complex UI features, leading teams, mentoring juniors, and working closely with clients to craft user-centric solutions. Comfortable across mobile and web, with brief experience in React + TypeScript. Seeking new challenges where I can apply my skills, knowledge, and experience on impactful projects as a Senior Software Developer.',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    height: 1.6,
                    color: Colors.black87,
                  )),
            ],
          );
        },
      ),
    );
  }
}
