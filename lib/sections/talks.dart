import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TalksSection extends StatelessWidget {
  const TalksSection({super.key});

  void _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Talks / Articles',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () => _openUrl('https://youtu.be/LPvM2pmyAGQ?si=r9rUxCrxKi7Laj9a'),
            child: const Text('Talk: Isolates in Dart & Flutter – YouTube Link',
                style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
          ),
          const SizedBox(height: 6),
          GestureDetector(
            onTap: () => _openUrl('https://geekyants.com/blog/isolates-in-dart-and-flutter'),
            child: const Text('Article: Isolates in Dart & Flutter – Read Here',
                style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
          ),
        ],
      ),
    );
  }
}
