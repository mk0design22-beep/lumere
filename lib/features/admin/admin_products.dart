import 'package:flutter/material.dart';
import 'package:lumere_abaya/app/theme.dart';
import 'package:lumere_abaya/features/home/models/product.dart';
import 'package:lumere_abaya/features/home/services/product_service.dart';
import 'package:lumere_abaya/features/home/widgets/product_card.dart';

class AdminProductsScreen extends StatefulWidget {
  const AdminProductsScreen({super.key});

  @override
  State<AdminProductsScreen> createState() => _AdminProductsScreenState();
}

class _AdminProductsScreenState extends State<AdminProductsScreen> {
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
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'إدارة المنتجات (API)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppTheme.charcoal,
              ),
            ),
          ),
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator(color: AppTheme.charcoal));
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
      return const Center(child: Text('لا توجد منتجات حالياً'));
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
