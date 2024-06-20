import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M14/praktek/providers/product_provider.dart'; // hapus dan sesuaikan
import 'package:pengembangan_aplikasi_mobile_flutter/M14/praktek/screens/widgets/product_item.dart'; // hapus dan sesuaikan
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Screen'),
        ),
        body: Consumer<ProductProvider>(
          builder: (context, productProvider, child) {
            if (productProvider.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: productProvider.dataProducts.products!.length,
                itemBuilder: (context, index) {
                  final product = productProvider.dataProducts.products![index];
                  return ProductItem(product: product);
                },
              ),
            );
          },
        ));
  }
}
