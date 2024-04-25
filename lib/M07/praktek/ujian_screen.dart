import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/praktek/widgets/button_custom.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/praktek/widgets/textfield_custom.dart';

class UjianScreen extends StatefulWidget {
  @override
  _UjianScreenState createState() => _UjianScreenState();
}

class _UjianScreenState extends State<UjianScreen> {
  TextEditingController nameCtrl = TextEditingController();
  String group1Value = "";
  bool isRedChecked = false;
  bool isBlueChecked = false;

  void handleRadioValueChanged(value) {
    setState(() {
      group1Value = value!;
    });
  }

  void handleCheckboxChanged(value, String color) {
    setState(() {
      if (color == 'Merah') {
        isRedChecked = value;
      } else if (color == 'Biru') {
        isBlueChecked = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ujian Online'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Pilih jawaban yang benar:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Apa ibukota Indonesia?'),
              subtitle: Column(
                children: <Widget>[
                  RadioListTile(
                    title: Text('Jakarta'),
                    value: 'Jakarta',
                    groupValue: group1Value,
                    onChanged: handleRadioValueChanged,
                  ),
                  RadioListTile(
                    title: Text('Bandung'),
                    value: 'Bandung',
                    groupValue: group1Value,
                    onChanged: handleRadioValueChanged,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Pilih warna yang Anda suka:'),
              subtitle: Column(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text('Merah'),
                    value: isRedChecked,
                    onChanged: (value) {
                      handleCheckboxChanged(value, 'Merah');
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Biru'),
                    value: isBlueChecked,
                    onChanged: (value) {
                      handleCheckboxChanged(value, 'Biru');
                    },
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFieldCustom(
                    ctrl: nameCtrl, label: 'Masukkan Nama Anda')),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: ButtonCustom(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Hasil Ujian ${nameCtrl.text}'),
                          content: Text('Nilai total Anda adalah: 80'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  label: "Submit"),
            )
          ],
        ),
      ),
    );
  }
}
