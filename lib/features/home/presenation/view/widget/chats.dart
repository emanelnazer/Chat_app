import 'package:chat_app/core/constants/data.dart';
import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/core/theme/styles.dart';
import 'package:chat_app/features/home/presenation/view/widget/personimage.dart';
import 'package:chat_app/features/home/presenation/view/widget/personname.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:persondata.length,itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: (){
          },
          title: PersonName(personName:persondata[index]['first_name'].toString()),
          subtitle: Text(persondata[index]['message'].toString(),style:Styles.textStyle10,maxLines: 1,),
          leading:PersonImage(imageurl: persondata[index]['image'].toString(),
            height: 60,
            width: 60,
          ),
          trailing: Column(
            children: [
              Text(persondata[index]['time'].toString(),style:Styles.textStyle10,),
              SizedBox(height: 3,),
              CircleAvatar(
                radius: 12,
                backgroundColor: ColorApp.secondcolor,
                child: Text(persondata[index]['real'].toString(),style:Styles.textStyle10,) ,),
            ],
          ),
        ),
      );
    },);
  }
}
