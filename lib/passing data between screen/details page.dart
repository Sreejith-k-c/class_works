import 'package:class_works/passing%20data%20between%20screen/dummy%20data.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    //to receive value from previous page/route
    final productId=ModalRoute.of(context)?.settings.arguments;

    final productFromList = products.firstWhere((element) => element['id']==productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(products['name']),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(products['image1']))),
          ),
          Text(products['name1'],
          style: const TextStyle(fontSize: 40),
          ),
          Text(
            products['description'],
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            products['price'],
            style: const TextStyle(fontSize: 20),
          ),
          Text(products['rating'],
          style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
