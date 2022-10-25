import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/pages/pages.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedItem = 0;

  void _navigateItems(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  // Navigated pages
  final List<Widget> _pages = [
    UserHome(),
    const SearchPage(),
    const AddPage(),
    const InboxPage(),
    const MePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedItem,
          selectedItemColor: Colors.white,
          onTap: _navigateItems,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded, size: 32, shadows: [
                  Shadow(
                      blurRadius: 4, color: Colors.red, offset: Offset(1, 2)),
                  Shadow(color: Colors.purple, offset: Offset(2, 1))
                ]),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outlined), label: "Inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "me")
          ]),
    );
  }
}
