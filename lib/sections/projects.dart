import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Project {
  final String title;
  final String subtitle;
  final String description;
  final String? imageAsset;
  final String? link;

  Project({
    required this.title,
    required this.subtitle,
    required this.description,
    this.imageAsset,
    this.link,
  });
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  static final List<Project> _projects = [
    Project(
      title: 'AirOps – Aviation Employee App',
      subtitle: 'Flutter (Provider) — Android/iOS',
      description:
          'Built for aviation companies with role-based workflows for pilots, engineers, and admins. Features include PDF viewing, digital signatures, image compression, and automated form filling.',
      imageAsset: 'assets/project_placeholder.svg',
    ),
    Project(
      title: 'Cera – Crisis Management System',
      subtitle: 'Flutter (Mobile & iPad) + React Web',
      description:
          'A platform to help responders coordinate during active threats with real-time updates, geofencing, video calls, and location tracking. Led front-end development of the web dashboard in React.',
      imageAsset: 'assets/project_placeholder.svg',
    ),
    Project(
      title: 'Omega (IAM+) – Voice-Controlled Super App',
      subtitle: 'Flutter (BLoC)',
      description:
          'A multifunctional mobile app integrating a voice assistant for booking services, email/calendar sync, alarms, news, and entertainment.',
      imageAsset: 'assets/project_placeholder.svg',
    ),
    Project(
      title: 'Unojobs – Job Matching Platform',
      subtitle: 'Flutter (Provider)',
      description:
          'App offering job recommendations using profile matches, filters, geolocation, and analytics for match potential.',
      imageAsset: 'assets/project_placeholder.svg',
    ),
    Project(
      title: 'Projense – Backend-Driven ERP Web App',
      subtitle: 'Flutter Web',
      description:
          'Backend-driven ERP UI for order supply chain management where screens and widgets were generated dynamically using server-driven schemas.',
      imageAsset: 'assets/project_placeholder.svg',
    ),
  ];

  void _showProjectDialog(BuildContext context, Project project) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(project.title,
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w700)),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (project.imageAsset != null)
                    SizedBox(
                      height: 150,
                      child: SvgPicture.asset(project.imageAsset!),
                    ),
                  const SizedBox(height: 12),
                  Text(project.description,
                      style: GoogleFonts.inter(
                          fontSize: 15, height: 1.6, color: Colors.black87)),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Close')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects overview',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w700)),
          const SizedBox(height: 24),
          LayoutBuilder(builder: (context, constraints) {
            final crossAxisCount = constraints.maxWidth > 900
                ? 3
                : constraints.maxWidth > 600
                    ? 2
                    : 1;
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.2),
              itemCount: _projects.length,
              itemBuilder: (context, index) {
                final project = _projects[index];
                return InkWell(
                  onTap: () => _showProjectDialog(context, project),
                  child: Card(
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (project.imageAsset != null)
                          Expanded(
                            child: SvgPicture.asset(
                              project.imageAsset!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(project.title,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87)),
                              const SizedBox(height: 6),
                              Text(project.subtitle,
                                  style: GoogleFonts.inter(
                                      color: Colors.grey[600],
                                      fontSize: 13)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
