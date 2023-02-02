import 'package:appphathanhbienlai/listnoidung.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 30, 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Nhập họ tên",
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
                labelText: "Nhập địa chỉ",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Colors.grey),
                ),
              ),
              keyboardType: TextInputType.name,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
            ),
            child: Text(
              "   Nội dung                    Số tiền" ,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 30)  ,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: Expanded(child: Noidunglist())
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Nhập số lượng",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Colors.grey),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Tổng tiền",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Colors.black),
                ),
              ),
              keyboardType: TextInputType.name,
            ),
          ),
        ],
      ),
    );
  }
}
