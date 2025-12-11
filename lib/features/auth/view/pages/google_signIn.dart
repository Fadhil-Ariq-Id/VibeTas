import 'package:flutter/material.dart';

import 'package:vibetask/core/theme/app_palette.dart';
import 'package:vibetask/features/auth/view/widgets/apps_logo.dart';
import 'package:vibetask/features/auth/view/widgets/google_buttons.dart';
import 'package:vibetask/features/auth/view/widgets/text_rules.dart';

class GoogleSignin extends StatefulWidget {
  const GoogleSignin({super.key});

  @override
  State<GoogleSignin> createState() => _GoogleSigninState();
}

class _GoogleSigninState extends State<GoogleSignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.signUpBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 85),
              const AppsLogo(),
              // Spacer to push content to center
              const SizedBox(height: 75),

              // Google Sign In Button
              const GoogleButtons(),

              const SizedBox(height: 40),

              // Terms and Rules Text
              const TextRules(),

              // Spacer to balance the layout
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
