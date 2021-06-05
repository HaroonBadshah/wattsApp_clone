import 'package:flutter/material.dart';
import 'package:flutter_wattsapp/models/chat_model.dart';

class ChateScreen extends StatefulWidget {
  @override
  _ChateScreenState createState() => _ChateScreenState();
}

class _ChateScreenState extends State<ChateScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DummyData.length,
      itemBuilder: (context ,i)=> new Column(
        children: [
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(DummyData[i].avatorUrl),
            ),
            title:  new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Text(
                  DummyData[i].name, 
                  style: TextStyle(
                    fontWeight: FontWeight.bold),
                    ),
                     new Text(
                  DummyData[i].time, 
                  style: TextStyle(
                    color: Colors.grey, fontSize:14.0),
                    )
              ],
            ),
            subtitle:  new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                  DummyData[i].message, 
                  style: TextStyle(
                    color: Colors.grey, fontSize:15.0),
                    )
              ),
            ),
          
        ],
      ),
    );
  }
}