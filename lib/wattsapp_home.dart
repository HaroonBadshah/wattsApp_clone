import 'package:flutter/material.dart';
import 'package:flutter_wattsapp/pages/calls_screen.dart';
import 'package:flutter_wattsapp/pages/camera_screen.dart';
import 'package:flutter_wattsapp/pages/chat_screen.dart';
import 'package:flutter_wattsapp/pages/status_screen.dart';

class WattsAppHome extends StatefulWidget {
  @override
  _WattsAppHomeState createState() => _WattsAppHomeState();
}

class _WattsAppHomeState extends State<WattsAppHome> with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this , initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WattsApp"),
        elevation: 0.7,

        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            new Tab(icon: Icon(Icons.camera_alt),),
            new Tab(text: "ChATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS",),

            
          ],),
          actions: [Icon(Icons.search),  
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ), 
          Icon(Icons.more_vert)],
      
      ),

      
      body: TabBarView(
        controller: _tabController,
        children: [
          new CameraScreen(),
          new ChateScreen(),
          new StatusScreen(),
          new CallsScreen(),

        ],
        ),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.message),
          onPressed: ()=> print("Open chats")),
      
    );
  }
}