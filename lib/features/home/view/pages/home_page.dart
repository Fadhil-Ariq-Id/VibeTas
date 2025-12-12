import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibetask/core/theme/app_palette.dart';
import 'package:vibetask/features/home/view/widgets/home_filter_pill.dart';
import 'package:vibetask/features/home/view/widgets/important_task_card.dart';
import 'package:vibetask/features/home/viewmodel/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ViewModel instance
  // In a robust app, use a Service Locator (GetIt) or Provider
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ListenableBuilder is available in Flutter 3.10+
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                // Top Bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.star_border,
                        size: 28,
                        color: AppPalette.primaryGreen,
                      ),

                      Text(
                        'Task',
                        style: GoogleFonts.alice(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 18,
                        // backgroundImage: AssetImage('...'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Filters Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      HomeFilterPill(
                        label: 'Star',
                        isIcon: true,
                        icon: Icons.star_border,
                        isSelected: _viewModel.selectedFilterIndex == 0,
                        onTap: () => _viewModel.setSelectedFilterIndex(0),
                      ),
                      HomeFilterPill(
                        label: 'My tasks',
                        count: '2',
                        isSelected: _viewModel.selectedFilterIndex == 1,
                        onTap: () => _viewModel.setSelectedFilterIndex(1),
                      ),
                      HomeFilterPill(
                        label: 'Today',
                        count: '2',
                        isSelected: _viewModel.selectedFilterIndex == 2,
                        onTap: () => _viewModel.setSelectedFilterIndex(2),
                      ),
                      HomeFilterPill(
                        label: '+ New List',
                        isSelected: false,
                        onTap: () {
                          // Create new list action
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // Main Content (Important Card)
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: ImportantTaskCard(),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom Navigation Bar
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _viewModel.selectedIndex,
            onTap: _viewModel.setSelectedIndex,
            selectedItemColor: AppPalette.primaryRed,
            unselectedItemColor: Colors.black54,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: const Color(0xFFEBEBE3),
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                activeIcon: Icon(Icons.chat_bubble),
                label: 'Chats',
              ),
            ],
          ),

          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              right: 10,
            ), // Adjust to match design placement
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppPalette.primaryRed,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 32),
            ),
          ),
        );
      },
    );
  }
}
