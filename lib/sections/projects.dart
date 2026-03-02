import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  Widget _buildProject(String name, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(details),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Projects overview',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _buildProject('AirOps – Aviation Employee App',
              'Flutter (Provider) — Android/iOS\nBuilt for aviation companies with role-based workflows for pilots, engineers, and admins. Features include PDF viewing, digital signatures, image compression, and automated form filling.'),
          _buildProject('Cera – Crisis Management System',
              'Flutter (Mobile & iPad) + React + TypeScript (Web)\nA platform to help responders coordinate during active threats with real-time updates, geofencing, video calls, and location tracking. Led front-end development of the web dashboard in React.'),
          _buildProject('Omega (IAM+) – Voice-Controlled Super App',
              'Flutter (BLoC)\nA multifunctional mobile app integrating a voice assistant for booking services, email/calendar sync, alarms, news, and entertainment.'),
          _buildProject('Unojobs – Job Matching Platform',
              'Flutter (Provider)\nApp offering job recommendations using profile matches, filters, geolocation, and analytics for match potential.'),
          _buildProject('Projense – Backend-Driven ERP Web App',
              'Flutter Web\nBackend-driven ERP UI for order supply chain management where screens and widgets are generated dynamically using server-driven schemas.'),
        ],
      ),
    );
  }
}
