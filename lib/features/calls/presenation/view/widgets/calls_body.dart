
import 'package:chat_app/core/constants/data.dart';
import 'package:chat_app/features/home/presenation/view/widget/personimage.dart';
import 'package:flutter/material.dart';

class Calls_body extends StatelessWidget {
  const Calls_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:persondata.length,itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: (){
          },
          title:  Text(
            "Marwan Ali",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          subtitle: Text(
            "Today,12:00 PM",
            style: TextStyle(fontSize: 14, color: Colors.black26),
          ),
          leading:PersonImage(imageurl: persondata[index]['image'].toString(),
            height: 60,
            width: 60,
          ),
          trailing: Column(
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.phone))
            ],
          ),
        ),
      );
    },);
  }
}