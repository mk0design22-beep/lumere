import 'package:flutter/material.dart';
import 'package:lumere_abaya/core/storage/local_storage.dart';
import 'package:lumere_abaya/features/home/screens/home_screen.dart';
import 'package:lumere_abaya/features/favorites/favorites_screen.dart';
import 'package:lumere_abaya/features/profile/profile_screen.dart';
import 'package:lumere_abaya/features/admin/admin_dashboard.dart';
import 'package:lumere_abaya/features/admin/admin_products.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  late final bool isAdmin;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    isAdmin = LocalStorage.role == 'admin';
    if (isAdmin) {
      _pages = [
        const AdminDashboard(),
        const AdminProductsScreen(),
        const ProfileScreen(),
      ];
    } else {
      _pages = [
        const HomeScreen(),
        const FavoritesScreen(),
        const ProfileScreen(),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: isAdmin
            ? const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_outlined),
                  activeIcon: Icon(Icons.dashboard),
                  label: 'الرئيسية',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.inventory_2_outlined),
                  activeIcon: Icon(Icons.inventory_2),
                  label: 'المنتجات',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: 'حسابي',
                ),
              ]
            : const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: 'الرئيسية',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  activeIcon: Icon(Icons.favorite),
                  label: 'المفضلة',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: 'حسابي',
                ),
              ],
      ),
    );
  }
}
