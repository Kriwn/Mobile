import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key? key,required this.name, required this.description,required this.price, required this.image}): super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Image.asset("assets/appimages/$image"),
          Expanded(
            child:  Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text("Price: $price"),
                ],
              ),
            ),
          )
          ],
        ),
      )
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
        title: Text("Product Listing"),
      ),
      body: ListView(
        shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0 , 10.0),
      children: <Widget>[
        ProductBox(name: "appleTV", description: "AppleTV", price: 3000, image: "appleTV.png"),
        ProductBox(name: "applewatch", description: "AppleWatch", price: 500, image: "applewatch.png"),
        ProductBox(name: "ipad", description: "Ipad", price: 1200, image: "ipad.png"),
        ProductBox(name: "iphone", description: "iPhone is the stylist phone ever", price: 1000, image: "iphone.png"),
        ProductBox(name: "laptop", description: "Laptop", price: 2000, image: "laptop.png")
      ],
      ),
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
