import 'package:flutter/material.dart';
import 'package:nev/main.dart';

import 'package:flutter/material.dart';
import 'package:nev/provider.dart';

class Detail extends StatelessWidget {
  Detail({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
    required this.detail,
    required this.amout,
  }) : super(key: key);

  final String name;
  final double price;
  final String image;
  final String detail;
  late int amout; // Change to late

  @override
  Widget build(BuildContext context) {
    Menu menu = Menu(
      name: name,
      price: price,
      image: image,
      detail: detail,
      amout: amout,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: Text(name),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              child: Image.asset("assets/menuimages/$image"),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  detail,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                color: Colors.blue,
                hoverColor:Colors.blue,
                iconSize: 50,
                icon: const Icon(Icons.add),
                Cosumer<Order>
                onPressed: () {
                  Order().addOrder(menu);
                  Navigator.pushNamed(context,'/');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cart extends StatelessWidget {
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Not use"),
    );
  }
}

class Suggest extends StatelessWidget {
  Suggest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      children: <Widget>[
        ProductBox(
            name: "Hawaiian",
            description: "Hawaiian pizza",
            price: 5.00,
            image: "hawaiian.jpg"),
        ProductBox(
            name: "Pepperoni",
            description: "Pepperoni pizza",
            price: 500,
            image: "pepperoni.jpg"),
      ],
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final double price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("assets/menuimages/$image"),
              Expanded(
                child: Container(
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
        ));
  }
}
