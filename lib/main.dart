import 'package:flutter/material.dart';
import 'sections/header.dart';
import 'sections/about.dart';
import 'sections/skills.dart';
import 'sections/experience.dart';
import 'sections/projects.dart';
import 'sections/education.dart';
import 'sections/achievements.dart';
import 'sections/talks.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahil Garg – Portfolio',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderSection(),
            AboutSection(),
            SkillsSection(),
            ExperienceSection(),
            ProjectsSection(),
            EducationSection(),
            AchievementsSection(),
            TalksSection(),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
