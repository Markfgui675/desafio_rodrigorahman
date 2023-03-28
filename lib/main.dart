import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Container(
          width: 350,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            border: Border.all(color: Colors.black)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  color: Colors.red,
                ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.notifications)
            ],
          ),
        ),
      ),
    );
  }
}

