import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibetask/core/theme/app_palette.dart';

class HomeFilterPill extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool isIcon;
  final IconData? icon;
  final VoidCallback onTap;
  final String? count;

  const HomeFilterPill({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.isIcon = false,
    this.icon,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSpecialNewList = label == '+ New List';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: EdgeInsets.symmetric(
          horizontal: isIcon ? 12 : 16,
          vertical: 8,
        ),
        decoration: isSpecialNewList
            ? null
            : BoxDecoration(
                color: isSelected
                    ? Colors.transparent
                    : Colors
                          .transparent, // Design shows transparent mostly, relying on text style or active indicator?
                // Actually looking at design: active items seem potentially just bold/underlined or maybe specifically styled.
                // The image shows "My tasks 2" and "Today 2". "Important" is a card below.
                // Let's assume a simple text style difference for now as per "clean" design.
                // Wait, the design has "My tasks 2" in a row. It looks like a TabBar.
                borderRadius: BorderRadius.circular(20),
              ),
        child: Row(
          children: [
            if (isIcon && icon != null)
              Icon(
                icon,
                color: AppPalette
                    .primaryGreen, // Star color in image seems green/teal
                size: 20,
              )
            else
              Text(
                label,
                style: GoogleFonts.alice(
                  fontSize: 18,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSpecialNewList
                      ? Colors.grey
                      : (isSelected ? Colors.black : Colors.grey),
                ),
              ),

            if (count != null) ...[
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  count!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
