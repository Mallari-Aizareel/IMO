import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: null,
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: CircleAvatar(
                  radius: 12.0,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/d0/39/66/d039663178d22cc2a63170e569787e9f.jpg',
                  ),
                ),
              ),
              Tab(icon: Icon(Icons.chat_rounded)),
              Tab(icon: Icon(Icons.record_voice_over)),
              Tab(icon: Icon(Icons.person_add_alt_1)),
            ],
          ),
        ),
      ),
