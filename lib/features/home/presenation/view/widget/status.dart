import 'package:chat_app/core/theme/styles.dart';
import 'package:chat_app/features/home/presenation/view/widget/personimage.dart';
import 'package:chat_app/features/home/presenation/view/widget/personname.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/data.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "My Status",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            subtitle: Text(
              "Tap to add status update",
              style: TextStyle(fontSize: 14, color: Colors.black26),
            ),
            leading: PersonImage(
              height: 30,
              width: 30,
              imageurl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV9Dcv7OTw5Qqu0tjCYJf7PT_IyXOkBl_HPQ&s',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Recent Updates",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
                  child: ListTile(
                    title: Text(
                      "Marwan Ali",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    subtitle: Text(
                      "Today,12:00 PM",
                      style: TextStyle(fontSize: 14, color: Colors.black26),
                    ),
                    leading: PersonImage(
                      height: 30,
                      width: 30,
                      imageurl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV9Dcv7OTw5Qqu0tjCYJf7PT_IyXOkBl_HPQ&s',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
