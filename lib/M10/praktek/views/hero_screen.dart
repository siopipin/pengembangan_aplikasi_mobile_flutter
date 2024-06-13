import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/praktek/controllers/hero_provider.dart';
import 'package:provider/provider.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final heroProvider = context.watch<HeroProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Screen'),
      ),
      body: Column(
        children: [
          Consumer<HeroProvider>(
            builder: (context, provider, child) {
              if (provider.isLoadHero) {
                return const CircularProgressIndicator();
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: provider.heroData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = provider.heroData;
                    return Center(
                      child: ListTile(
                        selected: heroProvider.selectedHero == data[index].name
                            ? true
                            : false,
                        selectedColor: Colors.blue,
                        title: Text(data[index].name ?? "-"),
                        subtitle: Text(data[index].power ?? ''),
                        onTap: () {
                          provider.gantiHero(data[index].name!);
                        },
                      ),
                    );
                  },
                );
              }
            },
          ),
          const Divider(),
          if (heroProvider.selectedHero.isEmpty)
            const Text("No Hero Selected")
          else
            showHero(context)
        ],
      ),
    );
  }

  showHero(BuildContext context) {
    //tambahakn provider
    final heroProvider = context.watch<HeroProvider>();

    return Column(
      children: [
        Text("Selected Hero: ${heroProvider.selectedHero}"),
        Text("Hero power ${heroProvider.heroData[0].showPower()}")
      ],
    );
  }
}
