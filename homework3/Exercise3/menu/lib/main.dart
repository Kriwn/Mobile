import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  const Menu ({Key? key, required this.name, required this.price, required this.image}): super(key: key);

  final String name;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      child: Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // add Path for Image
          Image.asset("assets/menuimages/$image",
          height: 100,
          width: 200,
          fit: BoxFit.cover,),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(name,
                  style: const TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15)),
                  Text("$price\$")
                ],
              ),

          ))
        ],
      ),
      ),
    );
  }



}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu",
        style: TextStyle(fontWeight: FontWeight.bold,)),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        color:const Color.fromRGBO(92, 237, 115, 0.9),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: const <Widget>[
            Menu(name: "Hawaiian",price :5.00,image: "hawaiian.jpg"),
            Menu(name: "Margherita", price: 3.99, image: "margherita.jpg"),
            Menu(name: "Ham and Cheese", price: 4.00, image: "HamandCheese.jpg"),
            Menu(name: "Pepperoni", price: 3.50, image: "pepperoni.jpg"),
            Menu(name: "Spaghetti", price: 2.19, image: "spaghetti_red_sause.jpg"),
            Menu(name: "Buffalo Wings", price: 2.50, image: "BuffaloWings.jpg"),
            Menu(name: "OnionRings", price: 1.50, image: "Onionrings.jpg"),
            Menu(name: "GarlicBread", price: 1.00, image: "garlic.jpg")
        ],
      ),
      )
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

void main() => runApp(MyApp());
