import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sub.dart';
import 'provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Order(),
    child: MaterialApp(
    title: 'name',
    initialRoute: '/',
    routes: {
      '/': (context) => const homepage(),
    },
    )
  ));
}

class Menu extends StatelessWidget {
  Menu(
      {Key? key,
      required this.name,
      required this.price,
      required this.image,
      required this.detail,
      required this.amout
      })
      : super(key: key);

  final String name;
  final double price;
  final String image;
  final String detail;
  late int amout;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20)),
      height: 200,
      width: 100,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(
                  name: name,
                  price: price,
                  image: image,
                  detail: detail,
                  amout : amout
                ),
              ));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // add Path for Image
            Image.asset(
              "assets/menuimages/$image",
              height: 100,
              width: 200,
              fit: BoxFit.fill,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15)),
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

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: <Widget>[
          Menu(
            name: "Hawaiian",
            price: 5.00,
            image: "hawaiian.jpg",
            detail: "Italian people don't like this",
            amout: 0,
          ),
          Menu(
            name: "Margherita",
            price: 3.99,
            image: "margherita.jpg",
            detail:"Pizza margherita, as the Italians call it, is a simple pizza hailing from Naples",
            amout: 0,
          ),
          Menu(
            name: "Ham and Cheese",
            price: 4.00,
            image: "HamandCheese.jpg",
            detail:"Toppings that work well with ham are green olives, bell peppers, and even pineapple.",
            amout: 0,
          ),
          Menu(
              name: "Pepperoni",
              price: 3.50,
              image: "pepperoni.jpg",
              detail:"Pepperoni pizza is an all-time favorite among pizza lovers, and its allure lies in its perfect balance of flavors.",
              amout: 0,
          ),
          Menu(
            name: "Spaghetti",
            price: 2.19,
            image: "spaghetti_red_sause.jpg",
            detail: "Everyone love this",
            amout: 0,
          ),
          Menu(
            name: "Buffalo Wings",
            price: 2.50,
            image: "BuffaloWings.jpg",
            detail: "Everyone love this",
            amout: 0,
          ),
          Menu(
            name: "OnionRings",
            price: 1.50,
            image: "Onionrings.jpg",
            detail: "Everyone love this",
            amout: 0,
          ),
          Menu(
            name: "GarlicBread",
            price: 1.00,
            image: "garlic.jpg",
            detail: "Everyone love this",
            amout: 0,
          )
        ],
      ),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepage();
}

class _homepage extends State<homepage> {
  int indexBottomNav = 0;
  List WidgetOption = [
    Home(),
    Cart(),
    Suggest(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: const Text(
          'Menu',
        ),
      ),
      body: Center(
        child: WidgetOption[indexBottomNav],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[350],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Suggest'),
        ],
        currentIndex: indexBottomNav,
        onTap: ((value) => setState(() {
              indexBottomNav = value;
            })),
      ),
    );
  }
}
