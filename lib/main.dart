import 'package:flutter/material.dart';
import 'package:pertemuan7/produk.dart';
import 'package:provider/provider.dart';
import 'halamanBelanja.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Keranjang(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Belanja',
      debugShowCheckedModeBanner: false,
      home: HalamanBelanja(),
    );
  }
}
