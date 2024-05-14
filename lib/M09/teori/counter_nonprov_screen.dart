import 'package:flutter/material.dart';

class CounterNonProvScreen extends StatefulWidget {
  const CounterNonProvScreen({super.key});

  @override
  State<CounterNonProvScreen> createState() => _CounterNonProvScreenState();
}

class _CounterNonProvScreenState extends State<CounterNonProvScreen> {
  String _kasir = "-";
  late bool _isLoading;
  late bool _isError;

  @override
  void initState() {
    super.initState();
    _isLoading = false;
    _isError = false;

    _getData("budiono");
  }

  _getData(String namaKasir) async {
    try {
      setState(() {
        _isLoading = true;
      });
      await Future.delayed(const Duration(seconds: 3), () {
        //setelah 3 detik, maka isi _counter dengan angkah 2;
        setState(() {
          _kasir = namaKasir;
        });
        print(_kasir);
        if (_kasir != "budiono") {
          throw 'something was wrong';
        }
      });
    } catch (e) {
      // handle error
      setState(() {
        _isError = true;
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text("Kasir Non Provider"),
              bottom: const TabBar(
                tabs: [
                  Tab(text: "Home", icon: Icon(Icons.home)),
                  Tab(text: "Explorer", icon: Icon(Icons.explore)),
                  Tab(text: "About", icon: Icon(Icons.people)),
                ],
              )),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TabBarView(children: [
              if (_isLoading)
                const Center(child: CircularProgressIndicator())
              else if (_isError == true)
                const Text("Something was error")
              else
                _homeView(),

              //ubah halaman 2 dan 3
              const Text("Halaman 2"),
              const Text("Halaman 3"),
            ]),
          )),
    );
  }

  Widget _homeView() {
    return ListView(
      children: [
        Row(
          children: [
            Text(
              _kasir,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
                onPressed: () {
                  _getData("antono");
                },
                child: const Text("Ubah Kasir")),
          ],
        )
      ],
    );
  }
}
