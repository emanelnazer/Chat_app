import 'package:chat_app/features/home/presenation/view/widget/bottomnavbar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("WhatsApp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),color: Colors.black87,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),color: Colors.black87,),
        ],
      ),
       body: BottomNavgationBar(),


    );
  }
}
