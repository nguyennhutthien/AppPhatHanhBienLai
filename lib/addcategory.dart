import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Danh mục - Thêm mới"),
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
          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,30),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhâp mệnh giá",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.name,

                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,30),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nhập nội dung",
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
