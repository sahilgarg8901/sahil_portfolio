import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      child: LayoutBuilder(builder: (context, constraints) {
        final isWide = constraints.maxWidth > 800;
        final name = Text('Sahil Garg',
            style: GoogleFonts.poppins(
                fontSize: 48, fontWeight: FontWeight.w700, color: Colors.white));

        final role = Text('Senior Flutter Developer',
            style: GoogleFonts.inter(fontSize: 20, color: Colors.white70));

        final summary = Text(
            'Senior Flutter Developer with over 5 years building scalable cross-platform apps. UI-driven, animation-focused, and comfortable on web & mobile.',
            style: GoogleFonts.inter(color: Colors.white70, fontSize: 16));

        final ctas = Wrap(
          spacing: 12,
          children: [
            ElevatedButton(onPressed: _openResume, child: const Text('Download CV')),
            OutlinedButton(onPressed: _launchEmail, child: const Text('Contact')),
          ],
        );

        final avatar = Center(
          child: SizedBox(
            width: isWide ? 260 : 160,
            height: isWide ? 260 : 160,
            child: ClipOval(
              child: SizedBox(
                width: isWide ? 260 : 160,
                height: isWide ? 260 : 160,
                child: SvgPicture.asset(
                  'assets/profile.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );

        if (isWide) {
          return Row(
            children: [
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    name,
                    const SizedBox(height: 8),
                    role,
                    const SizedBox(height: 20),
                    summary,
                    const SizedBox(height: 24),
                    ctas,
                  ],
                ),
              ),
              Expanded(flex: 4, child: avatar),
            ],
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            name,
            const SizedBox(height: 8),
            role,
            const SizedBox(height: 16),
            avatar,
            const SizedBox(height: 16),
            summary,
            const SizedBox(height: 20),
            ctas,
          ],
        );
      }),
    );
  }
}
