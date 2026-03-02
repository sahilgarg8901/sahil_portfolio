import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sections/header.dart';
import 'sections/about.dart';
import 'sections/skills.dart';
import 'sections/experience.dart';
import 'sections/projects.dart';
import 'sections/education.dart';
import 'sections/achievements.dart';
import 'sections/talks.dart';
import 'widgets/nav.dart';
import 'widgets/fade_animation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahil Garg – Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blueGrey,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    // create anchors for each section so nav can scroll to them
    final headerKey = GlobalKey();
    final aboutKey = GlobalKey();
    final skillsKey = GlobalKey();
    final experienceKey = GlobalKey();
    final projectsKey = GlobalKey();
    final educationKey = GlobalKey();
    final achievementsKey = GlobalKey();
    final talksKey = GlobalKey();

    final anchors = {
      'About': aboutKey,
      'Skills': skillsKey,
      'Work': experienceKey,
      'Projects': projectsKey,
      'Contact': talksKey,
    };

    return Scaffold(
      body: Column(
        children: [
          // top nav
          NavBar(anchors: anchors),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(key: headerKey, child: const HeaderSection()),
                  FadeInAnimation(
                    child: Container(
                      key: aboutKey,
                      child: const AboutSection(),
                    ),
                  ),
                  FadeInAnimation(
                    child: Container(
                      key: skillsKey,
                      child: const SkillsSection(),
                    ),
                  ),
                  FadeInAnimation(
                    child: Container(
                      key: experienceKey,
                      child: const ExperienceSection(),
                    ),
                  ),
                  FadeInAnimation(
                    child: Container(
                      key: projectsKey,
                      child: const ProjectsSection(),
                    ),
                  ),
                  FadeInAnimation(
                    child: Container(
                      key: educationKey,
                      child: const EducationSection(),
                    ),
                  ),
                  FadeInAnimation(
                    child: Container(
                      key: achievementsKey,
                      child: const AchievementsSection(),
                    ),
                  ),
                  FadeInAnimation(
                    child: Container(
                      key: talksKey,
                      child: const TalksSection(),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
