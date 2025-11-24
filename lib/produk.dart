import 'package:flutter/material.dart';

class Product {
  String name;

  Product(this.name);
}

class Keranjang with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get item => _items;
  int get n => item.length;

  void inc(Product p) {
    _items.add(p);
    notifyListeners();
  }

  void remove(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}
