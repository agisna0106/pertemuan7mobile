import 'package:flutter/material.dart';
import 'package:pertemuan7/halamanKeranjang.dart';
import 'package:pertemuan7/produk.dart';


class HalamanBelanja extends StatelessWidget {
  const HalamanBelanja({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> product = [
      Product('Iphone Air'),
      Product('Iphone 17 Pro'),
      Product('Iphone 17 ProMek'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopee',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          Consumer<Keranjang>(
            builder: (context, value, child) {
              return Badge(
                label: Text(value.n.toString()),
                child: Padding(
                  padding: EdgeInsetsGeometry.only(right: 5),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HalamanKeranjang(),
                        ),
                      );
                    },
                    icon: Icon(Icons.shopping_cart_sharp),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(product[index].name!),
              trailing: IconButton(
                onPressed: () {
                  Provider.of(context, listen: false).inc(product[index]);
                },
                icon: Icon(Icons.shopping_cart_checkout_sharp),
              ),
            ),
          );
        },
      ),
    );
  }
}
