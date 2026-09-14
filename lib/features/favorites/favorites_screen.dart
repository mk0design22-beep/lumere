import 'package:flutter/material.dart';
import 'package:lumere_abaya/app/theme.dart';
import 'package:lumere_abaya/core/storage/local_storage.dart';
import 'package:lumere_abaya/features/home/models/product.dart';
import 'package:lumere_abaya/features/home/services/product_service.dart';
import 'package:lumere_abaya/features/home/widgets/product_card.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final ProductService _productService = ProductService();
  List<Product> _favoriteProducts = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });
    try {
      final allProducts = await _productService.getProducts();
      final favIds = LocalStorage.favorites;
      
      setState(() {
        _favoriteProducts = allProducts.where((p) => favIds.contains(p.id)).toList();
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('المفضلة'),
      ),
      body: _buildContent(),
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
              onPressed: _loadFavorites,
              child: const Text('إعادة المحاولة'),
            ),
          ],
        ),
      );
    }

    if (_favoriteProducts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, size: 64, color: AppTheme.muted.withOpacity(0.5)),
            const SizedBox(height: 16),
            const Text(
              'لا توجد منتجات في المفضلة',
              style: TextStyle(color: AppTheme.muted, fontSize: 16),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      itemCount: _favoriteProducts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: ProductCard(
            product: _favoriteProducts[index],
            onFavoriteChanged: _loadFavorites,
          ),
        );
      },
    );
  }
}
