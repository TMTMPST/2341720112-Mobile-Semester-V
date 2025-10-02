import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/shop_card_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Bawang Goreng',
      price: 2500,
      imgPath: 'images/bgoreng.webp',
      stok: 50,
      rating: 4.8,
    ),
    Item(
      name: 'Garam',
      price: 2000,
      imgPath: 'images/garam.webp',
      stok: 57,
      rating: 4.7,
    ),
    Item(
      name: 'Gula',
      price: 5000,
      imgPath: 'images/gula.webp',
      rating: 5.0,
      stok: 100,
    ),

    Item(
      name: 'Kopi',
      price: 10000,
      imgPath: 'images/kopi.webp',
      stok: 900,
      rating: 4.1,
    ),
    Item(
      name: 'Minyak Goreng',
      price: 47000,
      imgPath: 'images/minyak.webp',
      stok: 13,
      rating: 4.6,
    ),
    Item(
      name: 'Teh',
      price: 5000,
      imgPath: 'images/teh.jpg',
      stok: 100,
      rating: 4.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Belanja by Vidi Joshubzky Saviola | 2341720112',
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.78,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ShopCardItem(
              onTap: () =>
                  Navigator.pushNamed(context, '/item', arguments: item),
              item: item,
            );
          },
        ),
      ),
    );
  }
}
