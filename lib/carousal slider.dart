import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CSlider(),));
}

class CSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Container(
          decoration:const BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage("https://plus.unsplash.com/premium_photo-1674581220087-d4ee95c5cc3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60")))),

    Container(
    decoration:const BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage("https://plus.unsplash.com/premium_photo-1674581220087-d4ee95c5cc3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60")))),

    Container(
    decoration:const BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage("https://images.unsplash.com/photo-1691991265410-c554a5720d27?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80")))),

    Container(
    decoration:const BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage("https://images.unsplash.com/photo-1690149347325-13435f400dd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80")))),

    Container(
    decoration:const BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage("https://images.unsplash.com/photo-1687308115876-bbe40bb95ee6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60")))),
      ], options: CarouselOptions(
        initialPage: 0,
        height: 500,
        aspectRatio: 16/9,
        viewportFraction: .5,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayCurve: Curves.easeInCubic,
        enlargeCenterPage: true,
        enlargeFactor: .3,
        scrollDirection: Axis.horizontal
      ))
    );
  }
}
