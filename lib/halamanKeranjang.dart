import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'produk.dart';

class HalamanKeranjang extends StatelessWidget {
  const HalamanKeranjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'keranjang',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Consumer<Keranjang>(
        builder: (context, value, child) {
          if (value.item.isEmpty) {
            return Text('Data Kosong');
          } else {
            return ListView.builder(
              itemCount: value.item.length,
              itemBuilder: (context, index) {
                var data = value.item[index];
                return Card(child: ListTile(title: Text(data.name)));
              },
            );
          }
        },
      ),
    );
  }
}
