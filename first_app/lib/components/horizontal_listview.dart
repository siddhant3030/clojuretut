import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         Category(image_location: 'images/cats/tshirt.png',
         image_caption: 'tshirt',),

         Category(image_location: 'images/cats/accessories.png',
         image_caption: 'access',),

         Category(image_location: 'images/cats/dress.png',
         image_caption: 'dress',),

         Category(image_location: 'images/cats/formal.png',
         image_caption: 'formal',),

         Category(image_location: 'images/cats/jeans.png',
         image_caption: 'jeans',),

         Category(image_location: 'images/cats/shoe.png',
         image_caption: 'shoe',),

         Category(image_location: 'images/cats/informal.png',
         image_caption: 'informal',)
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(image_location, width: 50.0, height: 80.0),
            subtitle: Container(alignment: Alignment.topCenter,
            child: Text(image_caption)
            )
        )
      ),
    )
    );
  }
}