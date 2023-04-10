import 'package:flutter/material.dart';

class Ocak extends StatelessWidget {
  const Ocak({Key? key}) : super(key: key);


  static const String _title = 'UNITY GÖREV TAKİP LİSTESİ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _customTileExpanded = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        ExpansionTile(
          title: const Text('UNITY'),
          textColor: Colors.blue,
          subtitle: const Text('Ocak Görevleri'),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: const <Widget>[
            ListTile(


              title: Text('UNITY 7-11 ARASI MODÜLLER'),


            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),

        ExpansionTile(
          title: const Text('COURSERA'),
          subtitle: const Text('Ocak Görevleri'),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: const <Widget>[
            ListTile(
                title: Text('PROJEYİ BAŞLATMA:PROJEYE BAŞARIYLA ADIM ATMA!')),
          ],

          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),


        ExpansionTile(
          title: const Text('YAZILIMCILAR İÇİN İNGİLİZCE'),
          subtitle: const Text('Ocak Görevleri'),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: const <Widget>[
            ListTile(
                title: Text('İLK 4 MODÜL ')),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),

        ExpansionTile(
          title: const Text('TEKNOLOJİ GİRİŞİMCİLİĞİ EĞİTİMLERİ'),
          subtitle: const Text('Ocak Görevleri'),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: const <Widget>[
            ListTile(
                title: Text("TEKNOLOJİ GİRİŞİMCİLİĞİ EĞİTİMLERİNİN %50'Sİ" )),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),

        SizedBox(width: 10), //SizedBox
        /** Checkbox Widget **/
        Checkbox(
          value: this.value,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          },
        ), //Check

      ],
    );
  }
}