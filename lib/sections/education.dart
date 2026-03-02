import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w700)),
          const SizedBox(height: 24),
          Text('B.Tech in Information Technology & Engineering',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text('NIET, Greater Noida',
              style: GoogleFonts.inter(
                  fontSize: 16, color: Colors.black87)),
          const SizedBox(height: 4),
          Text('2016 – 2020',
              style: GoogleFonts.inter(
                  fontSize: 15, color: Colors.grey[600])),
        ],
      ),
    );
  }
}
