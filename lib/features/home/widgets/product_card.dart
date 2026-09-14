import 'package:flutter/material.dart';
import 'package:lumere_abaya/app/theme.dart';
import 'package:lumere_abaya/core/storage/local_storage.dart';
import 'package:lumere_abaya/features/home/models/product.dart';
import 'package:lumere_abaya/features/product_details/product_details_screen.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  final VoidCallback? onFavoriteChanged;

  const ProductCard({
    super.key,
    required this.product,
    this.onFavoriteChanged,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
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
    if (widget.onFavoriteChanged != null) {
      widget.onFavoriteChanged!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ProductDetailsScreen(product: widget.product),
            ),
          ).then((_) {
            setState(() {
              isFavorite = LocalStorage.isFavorite(widget.product.id);
            });
            if (widget.onFavoriteChanged != null) {
              widget.onFavoriteChanged!();
            }
          });
        },
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: Hero(
            tag: 'product_\${widget.product.id}',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                widget.product.thumbnail,
                width: 60,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 60,
                  height: 80,
                  color: AppTheme.ivory,
                  child: const Icon(Icons.image_not_supported, color: AppTheme.muted),
                ),
              ),
            ),
          ),
          title: Text(
            widget.product.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 16),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                widget.product.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$\${widget.product.price}',
                    style: const TextStyle(
                      color: AppTheme.charcoal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: AppTheme.gold, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        widget.product.rating.toString(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? AppTheme.gold : AppTheme.muted,
            ),
            onPressed: _toggleFavorite,
          ),
        ),
      ),
    );
  }
}
