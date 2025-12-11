import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibetask/core/theme/app_palette.dart';

class AppsLogo extends StatelessWidget {
  const AppsLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/logo_arqtxs.png', width: 100, height: 100),
        const SizedBox(height: 0),
        Text(
          'VibeTask',
          style: GoogleFonts.alice(
            fontSize: 35,
            fontWeight: FontWeight.w600,
            color: AppPalette.textActive,
          ),
        ),
        const SizedBox(height: 43),
        Text(
          'Do your best work with Vibetask',
          textAlign: TextAlign.center,
          style: GoogleFonts.alice(
            fontWeight: FontWeight.w600,
            fontSize: 37,
            height: 45 / 37, // line height 45
            letterSpacing: -1,
            color: AppPalette.textActive,
          ),
        ),
      ],
    );
  }
}
