import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right:5),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://www.indiewire.com/wp-content/uploads/2022/05/Stan-Lee.jpg'),
        ),
      ),
    );
  }
}