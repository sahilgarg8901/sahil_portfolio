import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class TalksSection extends StatelessWidget {
  const TalksSection({super.key});

  void _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Talks / Articles',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w700)),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _openUrl('https://youtu.be/LPvM2pmyAGQ?si=r9rUxCrxKi7Laj9a'),
            child: Text(
              'Talk: Isolates in Dart & Flutter – YouTube Link',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.blue[600],
                  decoration: TextDecoration.underline,
                  height: 1.6),
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => _openUrl('https://geekyants.com/blog/isolates-in-dart-and-flutter'),
            child: Text(
              'Article: Isolates in Dart & Flutter – Read Here',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.blue[600],
                  decoration: TextDecoration.underline,
                  height: 1.6),
            ),
          ),
        ],
      ),
    );
  }
}
