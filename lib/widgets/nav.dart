import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  final Map<String, GlobalKey> anchors;
  const NavBar({super.key, required this.anchors});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        color: Colors.white,
        child: LayoutBuilder(builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sahil Garg',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w700)),
              if (!isMobile)
                Row(
                  children: widget.anchors.keys.map((label) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        onPressed: () {
                          final key = widget.anchors[label];
                          final ctx = key?.currentContext;
                          if (ctx != null) {
                            Scrollable.ensureVisible(ctx,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          }
                        },
                        child: Text(label,
                            style: GoogleFonts.inter(fontSize: 14)),
                      ),
                    );
                  }).toList(),
                ),
              if (isMobile)
                PopupMenuButton(
                  onSelected: (label) {
                    final key = widget.anchors[label];
                    final ctx = key?.currentContext;
                    if (ctx != null) {
                      Scrollable.ensureVisible(ctx,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    }
                  },
                  itemBuilder: (context) {
                    return widget.anchors.keys
                        .map((label) => PopupMenuItem(
                              value: label,
                              child: Text(label),
                            ))
                        .toList();
                  },
                ),
            ],
          );
        }),
      ),
    );
  }
}
