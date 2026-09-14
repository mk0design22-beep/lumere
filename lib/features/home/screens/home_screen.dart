import 'package:flutter/material.dart';
import 'package:lumere_abaya/app/theme.dart';
import 'package:lumere_abaya/core/storage/local_storage.dart';
import 'package:lumere_abaya/features/home/models/product.dart';
import 'package:lumere_abaya/features/home/services/product_service.dart';
import 'package:lumere_abaya/features/home/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductService _productService = ProductService();
  List<Product> _products = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });
    try {
      final products = await _productService.getProducts();
      setState(() {
        _products = products;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final username = LocalStorage.username ?? 'ضيف';

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'مرحباً، \$username',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.muted,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'اكتشفي أناقتك اليوم',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: AppTheme.charcoal,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'THE LUMERE EDIT',
                  style: TextStyle(
                    color: AppTheme.gold,
                    letterSpacing: 2,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Elegance is never loud.',
                  style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppTheme.charcoal),
      );
    }

    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: AppTheme.error),
            const SizedBox(height: 16),
            Text(_error!, style: const TextStyle(color: AppTheme.error)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadProducts,
              child: const Text('إعادة المحاولة'),
            ),
          ],
        ),
      );
    }

    if (_products.isEmpty) {
      return const Center(
        child: Text('لا توجد منتجات حالياً'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      itemCount: _products.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: ProductCard(product: _products[index]),
        );
      },
    );
  }
}
