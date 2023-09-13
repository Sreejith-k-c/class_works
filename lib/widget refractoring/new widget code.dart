Card(
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Image.asset(
"assets/images/mango.jpg",height: 100,),
const Text("Mango"),
const Text("\$ 100"),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children:[
ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.favorite), label: Text('Buy Now')),
SizedBox(width: 10,),
ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.shopping_cart), label: const Text('Buy Now'))
],
),
],
),
);