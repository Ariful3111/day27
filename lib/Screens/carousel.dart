import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class carousel extends StatefulWidget {
   carousel({Key? key}) : super(key: key);

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  CarouselController buttonCarouselController = CarouselController();
   int index=0;

List <Widget>image=[
  Image.network('https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29sb3J8ZW58MHx8MHx8&w=1000&q=80',height: 300,width: double.infinity,),
  Image.network('https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/12/Gradient_builder_2.jpg?auto=format&q=60&w=1815&h=1200&fit=crop&crop=faces',height: 300,width: double.infinity,),
  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrrg5OFeSCuVM2o-UlTKDKdnePzx4zcNpTZB7u8AiWxg-lF8rOVF2qtzROeHpZlViPOwY&usqp=CAU',height: 300,width: double.infinity,)
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: image,
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
            ),
          ),
          MaterialButton(
            onPressed: () => buttonCarouselController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear),
            child: Icon(Icons.slideshow,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
