import 'package:catalog_flutter/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController=TextEditingController();
  var myText="Ali";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(color: Colors.white,
        fontSize: 24),
        
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){
          myText=_textController.text;
          setState(() {
            
          });

        },
        
        child: const Icon(Icons.arrow_upward),),
        drawer: const myDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Card(
                   child: Column(
                    children: <Widget>[
                      
                      Image(image: AssetImage('assets/blog.jpg'),
                      fit: BoxFit.fill,
                      ),
                      SizedBox(height: 19),
                      Text (myText,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600),
                                          ),
                    // SizedBox(height: 19),
                      TextField(
                       controller: _textController,
                        decoration: InputDecoration(border: OutlineInputBorder(),
                        hintText: "Enter your name",
                        labelText: "Name"),
                        
                      )
                    ],
                   ), 
                   
              ),
              
            ),
          ),
        )
        );
  }
}