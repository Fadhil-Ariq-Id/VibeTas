import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImportantTaskCard extends StatelessWidget {
  const ImportantTaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 480, // Approximate height from image
      decoration: BoxDecoration(
        color: const Color(0xFFD3DCE6), // Light blue-spruce color from image
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Important',
                style: GoogleFonts.alice(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.swap_vert, size: 28),
                  const SizedBox(width: 16),
                  const Icon(Icons.more_vert, size: 28),
                ],
              ),
            ],
          ),

          const Spacer(flex: 2),

          // Image
          // Placeholder for the cat image
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              // color: Colors.grey.shade300,
              // borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.pets,
              size: 80,
              color: Colors.black54,
            ), // Placeholder
          ),

          const SizedBox(height: 24),

          // Empty State Text
          Text(
            'No important task',
            style: GoogleFonts.alice(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Mark important task with a star so\nyou can easily find them here',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: Colors.grey.shade600,
              height: 1.5,
            ),
          ),

          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
