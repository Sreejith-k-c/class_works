import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridCustom(),));
}
class GridCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.Custom"),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          childrenDelegate: SliverChildListDelegate(
              List.generate(12,
                      (index) =>
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "assets/images/apple.webp"),
                                    )),
                              ),
                              const Text(
                                "Item 1",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                  "\$280", style: TextStyle(fontSize: 30)),
                            ],
                          ),
                        ),
                      )))),
    );
  }
}