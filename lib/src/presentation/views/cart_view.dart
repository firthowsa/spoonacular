import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:spoonacular/src/presentation/mobx/cart_store.dart';

import '../../data/repositories/database_repository.dart';
import '../../locator.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CartItemStore store = CartItemStore(locator<DatabaseRepository>())..getCartItems();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),

      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (_) {
                if (store.cartItems.isEmpty) {
                  return const Center(child: Text('No items in the cart.'));

                  // return const Center(child: CircularProgressIndicator());
                } else if (store.error != null) {
                  return Center(child: Text('Error: ${store.error}'));
                }
                // else if (store.cartItems.isEmpty) {
                //   return const Center(child: Text('No items in the cart.'));
                // }
                else {

                  return ListView.builder(
                    itemCount: store.cartItems.length,
                    itemBuilder: (context, index) {
                      final cartItem = store.cartItems[index];
                      return ListTile(
                        title: Card(

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: cartItem.menuItem.image,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
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
                                const SizedBox(width: 20,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Name: ${cartItem.menuItem.title}',
                                        style: const TextStyle(fontWeight: FontWeight.bold),

                                      ),
                                      const SizedBox(height: 20,),
                                      Text('Price: ${cartItem.price}'),
                                      const SizedBox(height: 20,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Text('Quantity: ${cartItem.quantity}'),

                                          IconButton(
                                            color: Colors.orange,
                                              onPressed: (){
                                              store.updateCartItemQuantity(cartItem.id, 1);

                                              },
                                              icon: const Icon(Icons.add_box),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Observer(
                  builder: (_) {
                    double totalPrice = 0.0;
                    for (var item in store.cartItems) {
                      totalPrice += (item.price! * item.quantity);
                    }
                    return Text(
                      'Subtotal: \$${totalPrice.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                    );
                  },
                ),
                FilledButton(
                  onPressed: () {
                    store.clearCart();
                    context.go('/SuccessScreen');
                  },
                  child: const Text('Checkout'),
                ),
              ],
            ),
          ),
        ],
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
        currentIndex: 1,
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
