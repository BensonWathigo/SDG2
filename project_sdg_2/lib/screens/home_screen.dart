import 'package:flutter/material.dart';
import 'package:project_sdg_2/screens/Profile_screen.dart';
import 'tips_screen.dart';
import 'calculator_screen.dart';
import 'storage_guide_screen.dart';
import 'education_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    TipsScreen(),
    const CalculatorScreen(),
    StorageGuideScreen(),
    const EducationScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(
          child: Text(
            'Food Waste Awareness',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600) {
            // Use Navigation Rail for larger screens
            return Row(
              children: [
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _onItemTapped,
                  labelType: NavigationRailLabelType.selected,
                  backgroundColor: Colors.grey, // Set background color to green
                  selectedIconTheme: const IconThemeData(
                      color: Colors.blue), // White icons for selected items
                  unselectedIconTheme: const IconThemeData(
                      color:
                          Colors.blueGrey), // Faded white for unselected items
                  selectedLabelTextStyle: const TextStyle(
                      color: Colors.white), // White text for selected items
                  unselectedLabelTextStyle: const TextStyle(
                      color: Colors
                          .blueGrey), // Faded white text for unselected items
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.lightbulb),
                      selectedIcon: Icon(Icons.lightbulb_outline),
                      label: Text('Daily Tips'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.calculate),
                      selectedIcon: Icon(Icons.calculate_outlined),
                      label: Text('Calculator'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.storage),
                      selectedIcon: Icon(Icons.storage_outlined),
                      label: Text('Storage Guide'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.school),
                      selectedIcon: Icon(Icons.school_outlined),
                      label: Text('Education'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.person),
                      selectedIcon: Icon(Icons.person_4_rounded),
                      label: Text('Profile'),
                    ),
                    /*NavigationRailDestination(
                      icon: Icon(Icons.person),
                      selectedIcon: Icon(Icons.home),
                      label: Text('Welcome'),
                    ),*/
                  ],
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(
                  child: _screens[_selectedIndex],
                ),
              ],
            );
          } else {
            // Use Bottom Navigation Bar for smaller screens
            return _screens[_selectedIndex];
          }
        },
      ),
      bottomNavigationBar: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.lightbulb),
                  label: 'Daily Tips',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: 'Calculator',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.storage),
                  label: 'Storage Guide',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'Education',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                /*BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'welcome',
                ),*/
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blue, // Color of the selected item
              unselectedItemColor: Colors.blueGrey, // Color of unselected items
              backgroundColor: Colors.green, // Set background color to green
              onTap: _onItemTapped,
            );
          } else {
            return const SizedBox
                .shrink(); // Do not show the BottomNavigationBar on larger screens
          }
        },
      ),
    );
  }
}
