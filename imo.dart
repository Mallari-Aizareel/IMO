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
body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row 1
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          padding: EdgeInsets.all(14),
                          child: Icon(
                            Icons.camera_alt,
                            size: 20,
                            color: Colors.blue,
                          ),
                        ),
                        Positioned(
                          right: -2,
                          bottom: -1,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 13,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Add a story',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green[300],
                                      ),
                                      padding: EdgeInsets.all(2),
                                      child: ClipOval(
                                        child: Image.network(
                                          'https://assets-global.website-files.com/63bb7d51076d755de475e3a3/63be71febd2de358b87f9b6f_Jennie-Kim.webp',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        padding: EdgeInsets.all(1),
                                        child: Icon(
                                          Icons.zoom_in,
                                          size: 13,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Cool',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 7),
          ],
        ),
      ),
            // Row 2
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue[300],
                          ),
                          padding: EdgeInsets.all(2),
                          child: ClipOval(
                            child: Image.network(
                              'https://assets-global.website-files.com/63bb7d51076d755de475e3a3/63be71febd2de358b87f9b6f_Jennie-Kim.webp',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Icon(
                              Icons.bar_chart,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PowerRangersGang',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Samahang Walang Iwanan',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1:24 A.M',
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '',
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Icon(Icons.chevron_right, color:Colors.grey),
                  ],
                ),
              ],
            ),
            SizedBox(height: 7),
Bottom Navigation Bar
          bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.1)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.add),
color:Colors.blue,
              onPressed: () {

                // Add your functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
color:Colors.blue,
              onPressed: () {
                // Add your functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}
