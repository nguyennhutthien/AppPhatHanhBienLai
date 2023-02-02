import 'package:appphathanhbienlai/ExitPage.dart';
import 'package:appphathanhbienlai/categorypage.dart';
import 'package:appphathanhbienlai/homepage.dart';
import 'package:appphathanhbienlai/settingpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List Pages = [
    HomePage(),
    SettingPage(),
    CategoryPage(),
    ExitPage(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phát hành'),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlueAccent
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.upload),
            ),
          )
        ],
      ),
      body: Center(
        child: Pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: 'Phát hành',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Cấu hình',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Danh mục',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_off),
            label: 'Thoát',
            backgroundColor: Colors.blue,
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
