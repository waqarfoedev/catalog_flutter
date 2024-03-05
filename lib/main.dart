import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "catalog",
    home: HomePage()
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(color: Colors.white,
        fontSize: 24),
        
        ),
        body: Container(
          color: Colors.black,
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height/2,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
               Container(
              padding: const EdgeInsets.all(8),
              height: 99,
              width: 99,
              color: Colors.red,
            ), 
            Container(
              padding: const EdgeInsets.all(8),
              height: 99,
              width: 99,
              color: Colors.blue,
            ), 
            Container(
              padding: const EdgeInsets.all(8),
              height: 99,
              width: 99,
              color: Colors.green,
            ), 
            
            
              ],
            ),
        )
        );
  }
}