import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/features/home/presenation/view/widget/calls.dart';
import 'package:chat_app/features/home/presenation/view/widget/chats.dart';
import 'package:chat_app/features/home/presenation/view/widget/status.dart';
import 'package:flutter/material.dart';

class BottomNavgationBar extends StatefulWidget {
  const BottomNavgationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavgationBar> createState() => _BottomNavgationBarState();
}

class _BottomNavgationBarState extends State<BottomNavgationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Chats(),
    Status(),
    Calls(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chats',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Status',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
        floatingActionButton: _currentIndex==0?FloatingActionButton(onPressed: null,child: Icon(Icons.chat,color:Colors.white,),backgroundColor: ColorApp.secondcolor,):null
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
