import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterProvScreen extends StatefulWidget {
  const CounterProvScreen({super.key});

  @override
  State<CounterProvScreen> createState() => _CounterProvScreenState();
}

class _CounterProvScreenState extends State<CounterProvScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<CounterProvider>().getData("budiono");
    });
  }

  @override
  Widget build(BuildContext context) {
    final watchProvider = context.watch<CounterProvider>();
    print(watchProvider.isLoading);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text("Kasir Provider"),
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
              if (watchProvider.isLoading)
                const Center(child: CircularProgressIndicator())
              else if (watchProvider.isError == true)
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
    final readProvider = context.read<CounterProvider>();
    final watchProvider = context.watch<CounterProvider>();

    return ListView(
      children: [
        Row(
          children: [
            Text(watchProvider.kasir, style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 10),
            ElevatedButton(
                onPressed: () {
                  readProvider.getData("antono");
                },
                child: const Text("Ubah Kasir")),
          ],
        )
      ],
    );
  }
}
