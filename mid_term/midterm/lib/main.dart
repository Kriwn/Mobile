import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    title: 'name',
    initialRoute: '/',
    routes: {
      '/': (context) => const homepage(),
      '/Woman': (context) => const woman(),
      '/Man': (context) => const man(),
      '/Kid': (context) => const kid(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: const Text(
          'KUniqlo',
          style: TextStyle(fontFamily: "Kurale"),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/Woman');
            },
            splashColor: Colors.white10,
            child: Ink.image(
              width: 425,
              height: 300,
              fit: BoxFit.cover,
              image: const AssetImage('assets/images/img_1.png'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/Man');
            },
            splashColor: Colors.white10,
            child: Ink.image(
              width: 425,
              height: 300,
              fit: BoxFit.cover,
              image: const AssetImage('assets/images/img_2.png'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/Kid');
            },
            splashColor: Colors.white10,
            child: Ink.image(
              width: 425,
              height: 300,
              fit: BoxFit.cover,
              image: const AssetImage('assets/images/img_3.png'),
            ),
          )
        ],
      ),
    );
  }
}

class product extends StatelessWidget {
  const product(
      {Key? key, required this.name, required this.price, required this.image})
      : super(key: key);

  final String name;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // add Path for Image
              Expanded(child:
              Image.asset(
                "assets/images/product/$image",
                width: 500,
                height: 800,
                alignment: Alignment.t,
                 fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Kurale",
                            fontSize: 15)),
                    Text("THB $price",
                        style: const TextStyle(fontFamily: "Kurale"))
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class man extends StatelessWidget {
  const man({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: const Text(
          'KUniqlo',
          style: TextStyle(fontFamily: "Kurale"),
        ),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: const <Widget>[
            product(name: "AIRism Cotton Oversized",price: 590,image: "product201.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product202.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product203.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product204.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product205.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product206.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product207.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product208.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product209.png"),
            product(name: "AIRism Cotton Oversized",price: 590,image: "product210.png"),

          ],
        ),
      ),
    );
  }
}

class  kid extends StatelessWidget {
  const kid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: const Text(
          'KUniqlo',
          style: TextStyle(fontFamily: "Kurale"),
        ),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: const <Widget>[
            product(name: "AIRism Cotton Graphic",price: 390,image: "product301.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product302.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product303.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product304.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product305.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product306.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product307.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product308.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product309.png"),
            product(name: "AIRism Cotton Graphic",price: 390,image: "product310.png"),
          ],
        ),
      ),
    );
  }
}


class woman extends StatelessWidget {
  const woman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: const Text(
          'KUniqlo',
          style: TextStyle(fontFamily: "Kurale"),
        ),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: const <Widget>[
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product101.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product102.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product103.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product104.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product105.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product106.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product107.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product108.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product109.png"),
            product(
                name: "Short Sleeve T-Shirt",
                price: 790,
                image: "product110.png"),
          ],
        ),
      ),
    );
  }
}

class lucky_color extends StatelessWidget {
  lucky_color({super.key});

  final DateTime date = DateTime.now();
  String dateFomat = DateFormat('EEEE').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: const Text(
          'KUniqlo',
          style: TextStyle(fontFamily: "Kurale"),
        ),
      ),
      body: Text("$date"),
    );
  }
}

class wish extends StatelessWidget {
  wish({super.key});

  final DateTime date = DateTime.now();
  // String dateFomat = DateFormat('EEEE').format(date);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        title: const Text(
          'KUniqlo',
          style: TextStyle(fontFamily: "Kurale"),
        ),
      ),
      body: const Center(
        child: Text("Hello"),
      )
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
    const FirstScreen(),wish(),lucky_color()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetOption[indexBottomNav],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'WISH LIST'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'LUCKY COLOR'),
        ],
        currentIndex: indexBottomNav,
        onTap: ((value) => setState(() {
              indexBottomNav = value;
            })),
      ),
    );
  }
}
