import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String groupsex = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
  appBar: AppBar(
      title:  Text ("วิเคราะห์ค่า BMI"),
  ),
  body: Center(
    child: Column(
      children: <Widget>[
        ListTile(
              leading: Text('ส่วนสูง'),
              title:  TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'ระบุส่วนสูง (cm)'
                ),
              ),
            ),
        ListTile(
             leading: Text('น้ำหนัก'),
             title: TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                   hintText: 'ระบุน้ำหนัก (kg)'
               ),
             ),
           ),
        RadioListTile(
          activeColor: Colors.black,
          title: Text('man'),
          controlAffinity: ListTileControlAffinity.platform,

          value:'man', 
          groupValue: groupsex, 
          onChanged: (value) {
            setState(() {
              groupsex = value!;
            });
            print(groupsex);
          }
          ),
        RadioListTile(
          activeColor: Colors.black,
          title: Text('woman'),
          controlAffinity: ListTileControlAffinity.platform,

          value:'woman', 
          groupValue: groupsex, 
          onChanged: (value) {
            setState(() {
              groupsex = value!;
            });
            print(groupsex);
          }
          )
      ],
    ),
    ),

    );
    }
}

