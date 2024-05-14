import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/widgets/title_custom_widget.dart';

class NameWidget extends StatelessWidget {
  final String name;
  const NameWidget({super.key, this.name = "default name"});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      width: double.infinity,
      child: TitleCustomWidget(name: name),
    );
  }
}
