import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Achievements',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w700)),
          const SizedBox(height: 24),
          ...items.map((i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• ',
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Expanded(
                      child: Text(i,
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black87)),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
