import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:spoonacular/src/presentation/widgets/menu_item_widget.dart';

import '../../data/repositories/database_repository.dart';
import '../../locator.dart';
import '../mobx/food_store.dart';

class MenuItemScreen extends StatelessWidget {
  // final MenuItemStore store;

  const MenuItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuItemStore store = MenuItemStore(locator<DatabaseRepository>())..getMenuItems();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Items'),
        automaticallyImplyLeading: false,
      ),
      body: Observer(
        builder: (_) {
          if (store.isBusy) {
            return const Center(child: CircularProgressIndicator());
          } else if (store.error != null) {
            return Center(child: Text('Failed to load menu items: ${store.error}'));
          } else {
            return ListView.builder(
              itemCount: store.menuItems.length,
              itemBuilder: (context, index) {
                final menuItem = store.menuItems[index];
                return MenuItemWidget(
                  menuItem: menuItem,
                  onMenuItemPressed: (item) {
                    // Handle menu item press
                  },
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            context.go('/MenuItemScreen');
          } else if (index == 1) {
            context.go('/CartScreen');
          }
        },
      ),

    );
  }
}
