import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Education',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Text('B.Tech in Information Technology & Engineering'),
          Text('NIET, Greater Noida'),
          Text('2016 – 2020'),
        ],
      ),
    );
  }
}
