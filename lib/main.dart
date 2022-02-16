import 'package:flutter/material.dart';

class SnapChat extends StatelessWidget {
  const SnapChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SnapChatHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SnapChatHome extends StatefulWidget {
  const SnapChatHome({Key? key}) : super(key: key);

  @override
  _SnapChatHomeState createState() => _SnapChatHomeState();
}

class _SnapChatHomeState extends State<SnapChatHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Chats',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      Icons.contacts,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.settings,
                        color: Colors.grey[800],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const SnapChat());

}
