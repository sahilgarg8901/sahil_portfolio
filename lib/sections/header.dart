import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';
import '../utils/web_helper.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  void _launchEmail() async {
    final uri = Uri(scheme: 'mailto', path: 'sahilgarg8901@gmail.com');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  void _openResume() async {
    const assetPath = 'assets/Sahil_Resume_Nov_2025.pdf';
    if (kIsWeb) {
      // use helper to open in a new tab (or trigger download)
      openInNewTab(assetPath);
      return;
    }
    final url = Uri.parse(assetPath);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: Colors.blueGrey[900],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Sahil Garg',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const SizedBox(height: 8),
          const Text('Senior Flutter Developer',
              style: TextStyle(fontSize: 24, color: Colors.white70)),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            children: [
              ElevatedButton(
                  onPressed: _openResume, child: const Text('Download CV')),
              OutlinedButton(
                  onPressed: _launchEmail, child: const Text('Contact')),
            ],
          )
        ],
      ),
    );
  }
}
