import 'package:flutter/material.dart';

enum SingingCharacter { aaa, bbb }

class Noidunglist extends StatefulWidget {
  const Noidunglist({Key? key}) : super(key: key);

  @override
  State<Noidunglist> createState() => _NoidunglistState();
}

class _NoidunglistState extends State<Noidunglist> {
  @override
  Widget build(BuildContext context) {
    SingingCharacter? _character = SingingCharacter.aaa;
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey)
          ),
          child: ListTile(
            title: const Text('aaa                                     5,000đ'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.aaa,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
          ),
          child: ListTile(
            title: const Text('bbb                                     2,500đ'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.bbb,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

