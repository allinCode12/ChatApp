import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';




final ThemeData iOSTheme = ThemeData(
  primarySwatch: Colors.blueGrey,
  primaryColor: Colors.grey,
  primaryColorBrightness: Brightness.dark
);

final ThemeData androidTheme = ThemeData(
 primarySwatch: Colors.blueGrey,
 accentColor: Colors.white
);

final String defaultUserName = "Patrick";

class ChatPage extends StatelessWidget{
  
final myColor = const Color(0xFF273c75);
  @override
  Widget build(BuildContext ctx){
    return new MaterialApp(
      
      home: new Chat(),
    );
  }
  
  
}

class Chat extends StatefulWidget{

  @override
  State createState() => new ChatWindow();

}


class ChatWindow extends State<Chat> with TickerProviderStateMixin{
  final List<Msg> messages =  <Msg>[]; 
  final TextEditingController textEditingController = new TextEditingController();
  bool isTyping = false;

  final mycolor = const Color(0xFF273c75);

  @override
  Widget build(BuildContext ctx) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Chat Tapp!"),
        elevation: 1.0,
        backgroundColor: mycolor,
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              itemBuilder: (_, int index) => messages[index],
              itemCount: messages.length,
              reverse: true,
            ),
          )
        ],
      ),
    );
  }
}

///test test
