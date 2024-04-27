import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  final List<Map<String, dynamic>> _menuItems = [
    {
      "name": "Nasi Goreng",
      "price": 15000,
      "image": "assets/images/nasigoreng.webp"
    },
    {"name": "Mie Ayam", "price": 12000, "image": "assets/images/mieayam.jpg"},
    {"name": "Sate Ayam", "price": 20000, "image": "assets/images/ste.webp"},
    {"name": "Bakso", "price": 18000, "image": "assets/images/bakso.jpeg"},
    {"name": "Gado Gado", "price": 16000, "image": "assets/images/gado.jpg"},
    {
      "name": "Ayam Goreng",
      "price": 22000,
      "image": "assets/images/ayamgoreng.jpg"
    }
  ];

  List<Map<String, dynamic>> _selectedMenus = [];
  int _totalPrice = 0;

  void _selectMenu(String name, int price) {
    setState(() {
      Map<String, dynamic> menu = {'name': name, 'price': price};
      if (!_selectedMenus.any((item) => item['name'] == name)) {
        _selectedMenus.add(menu);
        _totalPrice += price;
      } else {
        _selectedMenus.removeWhere((item) => item['name'] == name);
        _totalPrice -= price;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Menu Makanan'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _menuItems.length,
              itemBuilder: (contexts, index) {
                return GestureDetector(
                  onTap: () => _selectMenu(
                      _menuItems[index]['name'], _menuItems[index]['price']),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: _selectedMenus.any((item) =>
                              item['name'] == _menuItems[index]['name'])
                          ? Colors.blue[200]
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(_menuItems[index]['image'],
                            width: 50, height: 50),
                        Text(_menuItems[index]['name']),
                        Text('Rp ${_menuItems[index]['price']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu terpilih: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                for (var menu in _selectedMenus)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(menu['name']), Text('Rp ${menu['price']}')],
                  ),
                const Divider(),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Total: Rp $_totalPrice')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
