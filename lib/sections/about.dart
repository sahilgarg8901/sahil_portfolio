import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('About Me',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Text(
              'Senior Flutter Developer with over 6 years of experience building scalable, cross-platform mobile applications using Flutter. Proven track record in delivering complex UI features, leading teams, mentoring juniors, and working closely with clients to craft user-centric solutions. Comfortable across mobile and web, with brief experience in React + TypeScript. Seeking new challenges where I can apply my skills, knowledge, and experience on impactful projects as a Senior Software Developer.'),
        ],
      ),
    );
  }
}
