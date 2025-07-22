import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0; // Menyimpan index tab yang aktif

  // Daftar widget halaman yang ditampilkan berdasarkan tab yang dipilih
  final List<Widget> pages = <Widget>[
    Center(child: Text('Ini halaman Beranda')),    // Index 0
    Center(child: Text('Ini halaman Bookmark')),   // Index 1
    Center(child: Text('Ini halaman Cart')),       // Index 2
    Center(child: Text('Ini halaman Profil')),     // Index 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Flutter'), // Judul di AppBar
      ),
      body: pages[selectedIndex], // Menampilkan halaman sesuai tab aktif
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationDuration: const Duration(milliseconds: 300), // animasi
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_border_outlined),
            selectedIcon: Icon(Icons.bookmark_rounded),
            label: 'Bookmarks',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(Icons.shopping_bag_rounded),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
