import 'package:flutter/material.dart';

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Top 10 — Rajasthan Hackathon (2018)',
      'Runner-up — B’VEST (2017)',
      'Hosted 12-hour Hackathon & Smart India Hackathon (2019)',
      'Winner — College Badminton Championship (2017)',
    ];
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Achievements',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ...items.map((i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text('• $i'),
              ))
        ],
      ),
    );
  }
}
