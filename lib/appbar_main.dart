import 'package:flutter/material.dart';

class AppBarMain extends StatefulWidget {
  var tabController;
   AppBarMain({Key? key, required this.tabController}) : super(key: key);
   
  @override
  _AppBarMainState createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('chat'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.contacts)),
        PopupMenuButton(itemBuilder: (context) {
          return [
            const PopupMenuItem(
              child: Text('New Chat'),
              value: 1,
            ),
            const PopupMenuItem(
              child: Text('Manage Chats'),
              value: 2,
            ),
            const PopupMenuItem(
              child: Text('Manage Friendships'),
              value: 3,
            ),
            const PopupMenuItem(
              child: Text('Customise Best Friend Emojis'),
              value: 1,
            ),
          ];
        })
      ],
      bottom: TabBar(controller: widget.tabController,
      tabs: [
        Icon(Icons.location_on),
        Icon(Icons.chat_bubble),
        Icon(Icons.camera_alt),
        Icon(Icons.group),
        Icon(Icons.play_arrow)
      ],),
    );
  }
}
