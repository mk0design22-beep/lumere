import 'package:flutter/material.dart';
import 'package:lumere_abaya/app/theme.dart';
import 'package:lumere_abaya/core/storage/local_storage.dart';
import 'package:lumere_abaya/features/auth/screens/sign_up_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _logout(BuildContext context) async {
    await LocalStorage.clearSession();
    if (!context.mounted) return;
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const SignUpScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final username = LocalStorage.username ?? 'غير معروف';
    final email = LocalStorage.email ?? 'غير معروف';
    final role = LocalStorage.role;

    return Scaffold(
      appBar: AppBar(
        title: const Text('الملف الشخصي'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppTheme.gold,
              child: Icon(Icons.person, size: 50, color: AppTheme.white),
            ),
            const SizedBox(height: 16),
            Text(
              username,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 4),
            Text(
              email,
              style: const TextStyle(color: AppTheme.muted, fontSize: 16),
            ),
            if (role == 'admin') ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.charcoal,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  'مدير',
                  style: TextStyle(color: AppTheme.white, fontSize: 12),
                ),
              ),
            ],
            const SizedBox(height: 40),
            ListTile(
              leading: const Icon(Icons.settings, color: AppTheme.charcoal),
              title: const Text('الإعدادات'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(color: AppTheme.muted),
            ListTile(
              leading: const Icon(Icons.language, color: AppTheme.charcoal),
              title: const Text('اللغة'),
              trailing: const Text('العربية', style: TextStyle(color: AppTheme.muted)),
              onTap: () {},
            ),
            const Divider(color: AppTheme.muted),
            ListTile(
              leading: const Icon(Icons.logout, color: AppTheme.error),
              title: const Text('تسجيل الخروج', style: TextStyle(color: AppTheme.error)),
              onTap: () => _logout(context),
            ),
          ],
        ),
      ),
    );
  }
}
