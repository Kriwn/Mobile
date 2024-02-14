import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        width: 200,
        height: 200,
        'assets/images/dog.jpg',
        fit: BoxFit.fitWidth,

      ),
    );
  }
}

Widget _buildDetailsRow(String heading, String value) {
  return Row(
    children: [
      Text(
        "$heading: ",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Kurale"),
      ),
      Text(value)
    ],
  );
}


Widget _buildIcon(IconData icon,String text){
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: <Widget>[
        Icon(icon, size: 40),
        Text(text)
      ],
    ),);
}

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wolfram Barkovich',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400,
            fontFamily: "Kurale"),
          ),
          const Row(
            children: [
              Icon(Icons.star,
              color: Colors.orange,),
              Icon(Icons.star,
              color: Colors.orange,),
              Icon(Icons.star,
              color: Colors.orange,),
              Icon(Icons.star,
              color: Colors.orange,),
              Icon(Icons.star,
              color: Colors.orange,)
            ],
          ),
          _buildDetailsRow('Age', '4'),
          _buildDetailsRow('Status', 'Good Boy')
        ],
      ),
    );
  }
}

class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});

  @override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      _buildIcon(Icons.restaurant, 'Feed'),
      _buildIcon(Icons.heart_broken, 'Pet'),
      _buildIcon(Icons.directions_walk, 'Walk')
    ],
  );
}
}

class ProfileScreecn extends StatelessWidget {
  const ProfileScreecn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/beach.jpg'),
          Transform.translate(
            offset: const Offset(0, 100),
            child: const Column(
              children: [
                ProfileImage(),
                ProfileDetail(),
                ProfileActions()
              ],
            ),)
        ],
      ),
    );
  }
}
