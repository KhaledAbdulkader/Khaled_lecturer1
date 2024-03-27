import 'package:flutter/material.dart';

void main() {
  runApp(protofolio());
}

class protofolio extends StatelessWidget {
  const protofolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Protofolio(),
    );
  }
}

class Protofolio extends StatefulWidget {
  const Protofolio({super.key});

  @override
  State<Protofolio> createState() => _ProtofolioState();
}

class _ProtofolioState extends State<Protofolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Khaled'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Stack(
        children: [
          // Center the red circle (with the image)
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset('assets/images/khaled.jpeg'),
              clipBehavior: Clip.antiAlias,
            ),
          ),
          // Position the green box on the top right corner
          Positioned(
            top: 180,
            right: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Computer Science',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '18',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 180,
            right: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),

            ),
          ),
          Positioned(
            bottom: 180,
            left: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "12/5/2005",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
