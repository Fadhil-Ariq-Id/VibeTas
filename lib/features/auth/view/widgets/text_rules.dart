import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibetask/core/theme/app_palette.dart';

class TextRules extends StatelessWidget {
  const TextRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // OR text - centered
        Text(
          'OR',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: -1,
            color: AppPalette.signUpText,
          ),
        ),

        const SizedBox(height: 16),

        // Policy text - centered
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'By continuing, you agree to Arqtxs Consumer Terms and Usage Policy, and acknowledge their Privacy Policy.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: -1,
              height: 1.41,
              color: AppPalette.signUpText,
            ),
          ),
        ),
      ],
    );
  }
}
