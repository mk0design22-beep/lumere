import 'package:flutter/material.dart';
import 'package:lumere_abaya/app/theme.dart';
import 'package:lumere_abaya/core/storage/local_storage.dart';
import 'package:lumere_abaya/features/home/models/product.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = LocalStorage.isFavorite(widget.product.id);
  }

  void _toggleFavorite() async {
    await LocalStorage.toggleFavorite(widget.product.id);
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التفاصيل'),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? AppTheme.gold : AppTheme.charcoal,
            ),
            onPressed: _toggleFavorite,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'product_\${widget.product.id}',
              child: Container(
                height: 300,
                color: AppTheme.white,
                child: PageView.builder(
                  itemCount: widget.product.images.isNotEmpty ? widget.product.images.length : 1,
                  itemBuilder: (context, index) {
                    final imageUrl = widget.product.images.isNotEmpty
                        ? widget.product.images[index]
                        : widget.product.thumbnail;
                    return Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported, size: 50, color: AppTheme.muted),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.product.brand != null) ...[
                    Text(
                      widget.product.brand!.toUpperCase(),
                      style: const TextStyle(
                        color: AppTheme.gold,
                        letterSpacing: 2,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  Text(
                    widget.product.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$\${widget.product.price}',
                        style: const TextStyle(
                          color: AppTheme.charcoal,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: AppTheme.gold),
                          const SizedBox(width: 4),
                          Text(
                            widget.product.rating.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'الوصف',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.product.description,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppTheme.softBlack,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Divider(color: AppTheme.muted),
                  const SizedBox(height: 16),
                  _buildInfoRow('التصنيف', widget.product.category),
                  const SizedBox(height: 8),
                  _buildInfoRow('المخزون', '\${widget.product.stock} قطعة'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(color: AppTheme.muted, fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(color: AppTheme.charcoal, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
