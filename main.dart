import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/ChatPage.dart';




void main(){

  runApp(new MaterialApp(

    home: HomePage(),

    routes: <String, WidgetBuilder>{
      "/ChatApp_Page": (BuildContext ctx) =>ChatPage()
    }

  ));
}



class HomePage extends StatelessWidget{

final myColor1 = const Color(0xFF273c75);

  @override
  Widget build(BuildContext context){
    

    return Scaffold(
      appBar: new AppBar(title: new Text("Home"), 
                         backgroundColor: Colors.blueAccent
      ),
      
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.chat, color: myColor1,),
                iconSize: 100.0,
                onPressed: (){
                  Navigator.of(context).pushNamed("/ChatApp_Page");
                }
              ),
              new Text("Check My Messages", style: new TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),),
            ],
          )
        ),
      ),
    );
  }
}
//hello

