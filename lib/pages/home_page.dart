import 'package:flutter/material.dart';
import 'package:pks3/pages/product_detail.dart';
import '../../models/model.dart';
import '../../components/item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(
          child: Text(
            'Fishing Gear',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: fishingProducts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: fishingProducts[index]),
                ),
              );
            },
            child: Item(product: fishingProducts[index]),
          );
        },
      ),
    );
  }
}
