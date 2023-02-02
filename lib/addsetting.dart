import 'package:flutter/material.dart';

class AddSetting extends StatefulWidget {
  const AddSetting({Key? key}) : super(key: key);

  @override
  State<AddSetting> createState() => _AddSettingState();
}

class _AddSettingState extends State<AddSetting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cấu hình - Thêm mới"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent
              ),
              child: IconButton(
                onPressed: (){
                },
                icon: Icon(Icons.save),
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 30, 30, 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhâp url service",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,

                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhập username",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhập password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhập ac acount",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhập ac pass",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhập pattern",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhập serial",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
