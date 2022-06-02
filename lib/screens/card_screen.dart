import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(name: 'Un hermoso paisaje',imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Blake-Randall-1.jpg'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGvjQrlm_PXaY5afnhi_W4F72zK2HbHD6NGhmV1xEdLss5beM0Bto9ptcNMMHkBJa9IyI&usqp=CAU'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Playa en Invierno',imageUrl: 'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://www.lightstalking.com/wp-content/uploads/Iceland-reflection.jpg'),
          SizedBox(height: 100),
   

        ],
      ),
    );
  }
}


