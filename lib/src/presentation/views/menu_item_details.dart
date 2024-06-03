

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';



class MenuItemDetails extends HookWidget {
  final MenuItem menuItem;

  const MenuItemDetails({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              _buildArticleTitleAndDate(),
              // _buildArticleImage(),
            ],
          ),
        ),
      ),

    );
  }

  Widget _buildArticleTitleAndDate() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            menuItem.title,
            style: const TextStyle(
              fontFamily: 'Butler',
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 14),
          CachedNetworkImage(
            imageUrl: menuItem.image,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Center(
              child: Text(
                'Pizza\nNOT FOUND',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(width: 4),
          Text(
            menuItem.restaurantChain,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }


}
