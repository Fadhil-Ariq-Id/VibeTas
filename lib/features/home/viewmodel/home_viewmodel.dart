import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  // State
  int _selectedIndex = 0;
  int _selectedFilterIndex = 1; // Default to 'My tasks'

  // Getters
  int get selectedIndex => _selectedIndex;
  int get selectedFilterIndex => _selectedFilterIndex;

  // Actions
  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void setSelectedFilterIndex(int index) {
    _selectedFilterIndex = index;
    notifyListeners();
  }

  // Placeholder data for filters
  final List<String> filters = ['My tasks', 'Today', 'New List'];
  // Note: First item is Star icon in UI, handled separately or as index 0
}
