import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:pengembangan_aplikasi_mobile_flutter/M14/praktek/models/product_model.dart'; // hapus ini dan sesuaikan
import 'dart:convert';

class ProductProvider with ChangeNotifier {
  ProductProvider() {
    getDataProduct();
  }

  bool _isLoading = false;
  ProductModel _products = ProductModel();

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  ProductModel get dataProducts => _products;
  set setProducts(val) {
    _products = val;
    notifyListeners();
  }

  Future<void> getDataProduct() async {
    try {
      _isLoading = true;
      notifyListeners();

      final response =
          await http.get(Uri.parse('https://dummyjson.com/products'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setProducts = ProductModel.fromJson(data);
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      print('handling error: $error');
    } finally {
      _isLoading = false;
    }
  }
}
