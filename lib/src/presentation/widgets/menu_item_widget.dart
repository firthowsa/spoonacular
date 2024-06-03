import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';

import '../../data/datasources/local/isar_service.dart';




class MenuItemWidget extends StatelessWidget {
  final MenuItem menuItem;
  final bool isRemovable;
  final void Function(MenuItem menuItem)? onRemove;
  final void Function(MenuItem menuItem)? onMenuItemPressed;
  final void Function(MenuItem menuItem)? onAddToCart;



  const MenuItemWidget({
    super.key,
    required this.menuItem,
    this.onMenuItemPressed,
    this.isRemovable = false,
    this.onRemove,
    this.onAddToCart,

  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
            start: 14, end: 14,  top: 7),
        height: MediaQuery.of(context).size.height / 2.2,
        // alignment: Alignment.center,
        child: Card(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 16, end: 16,  top: 16),
            child: Column(
              children: [
                _buildImage(context),
                _buildTitleAndDescription(),
                //_buildAddToCartButton(context),
                _buildRemovableArea(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        height: 180,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.08),
        ),
        child: CachedNetworkImage(
          imageUrl: menuItem.image,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Center(
            child: Text(
              'Pizza\nPIZZA',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndDescription() {
    final isarService = IsarService(); // Assuming an instance of IsarService

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Expanded(
              child: Text(
                menuItem.title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Butler',
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 4),
                Text(
                  menuItem.restaurantChain ,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
      FilledButton(
        onPressed: (){
          isarService.addToCart(menuItem, 20.0, 1);
          showToast('Added To Cart Successfully');

        },        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_shopping_cart),
            SizedBox(width: 8),
            Text('Add to Cart'),
          ],
        ),
      )
          ],
        ),
      ),
    );
  }

  Widget _buildRemovableArea() {
    if (isRemovable) {
      return GestureDetector(
        onTap: _onRemove,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(Icons.delete, color: Colors.red),
        ),
      );
    }
    return Container();
  }

  void _onTap() {
    if (onMenuItemPressed != null) {
      onMenuItemPressed?.call(menuItem);
    }
  }

  void _onRemove() {
    if (onRemove != null) {
      onRemove?.call(menuItem);
    }
  }

}
