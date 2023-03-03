import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class cached_network_image extends StatefulWidget {
   cached_network_image({Key? key}) : super(key: key);

  @override
  State<cached_network_image> createState() => _cached_network_imageState();
}

class _cached_network_imageState extends State<cached_network_image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CachedNetworkImage(
            imageUrl: "https://wallpaperaccess.com/full/31189.jpg",
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    colorFilter:
                    ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
              ),
            ),
            placeholder: (context, url) => Image.network('https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29sb3J8ZW58MHx8MHx8&w=1000&q=80',height: 300,width: double.infinity,),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
