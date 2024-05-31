import 'package:flutter/material.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';


class MenuItemWidget extends StatelessWidget {
  final MenuItem menuItem;
  final bool isRemovable;
  final void Function(MenuItem menuItem)? onRemove;
  final void Function(MenuItem menuItem)? onMenuItemPressed;

  const MenuItemWidget({
    super.key,
    required this.menuItem,
    this.onMenuItemPressed,
    this.isRemovable = false,
    this.onRemove,
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
        // width: MediaQuery.of(context).size.width / 3,
        height: 180,
        width: 400,

        // height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.08),
        ),
        child: Image.network(
          menuItem.image ?? '',
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) {
            return const Center(
              child: Text(
                '404\nNOT FOUND',
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTitleAndDescription() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        // padding: const EdgeInsetsDirectional.only(
        //     start: 14, end: 14,  top: 7),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Expanded(
              child: Text(
                menuItem.title ?? '',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Butler',
                  fontWeight: FontWeight.w900,
                  fontSize: 22,

                ),
              ),
            ),

            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(width: 4),
                Text(
                  menuItem.restaurantChain ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
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