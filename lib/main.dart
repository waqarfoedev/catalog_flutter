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
        backgroundColor: Colors.white
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            height: 99,
            width: 99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(2.1, 4.9)

                )
              ],
              gradient: const LinearGradient(
                colors: [Colors.pink, Colors.red, Colors.orange]
              )
            ),
            child: const Text("Assalam u aliakum",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),),
          ),
        ),
        );
  }
}