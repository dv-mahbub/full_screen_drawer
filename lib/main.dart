import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Full Screen Drawer"),
        centerTitle: true,
      ),
      drawer: fullScreenDrawer(),
      body: const Center(
        child: Icon(Icons.watch_later_outlined, size: 200,),
      ),
    );
  }

  fullScreenDrawer() {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Icon(Icons.alarm, size: 180,),
          ),
          Positioned(
            top: 20,
            right: 15,
            child: ElevatedButton(
              onPressed: (){Navigator.of(context).pop();},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: const CircleBorder()
              ),
              child: const Text('x'),
            ),
          ),
        ],
      ),
    );
  }
}
