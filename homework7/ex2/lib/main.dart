import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



Future<Album> fetchAlbum() async{
    final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    
    if (response.statusCode == 200)
    {
      return Album.fromJson(jsonDecode(response.body) as Map<String,dynamic>);
    }else {
      throw Exception('Failed to load album');
    }

}

class Album {

  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return switch (json) {{
      'userId': int userId,
      'id': int id,
      'title': String title,
      } =>
        Album(userId: userId,id: id,title: title,),_ => throw const FormatException('Failed to load album.'),
    };
  }

}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  late Future<Album> futureAlbum;

  @override
  void initState(){
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme:  ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Fetch Data Example"),
        ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, x) {
            if (x.hasData){
              return Text(x.data!.title);
            }else if (x.hasError){
              return Text('${x.error}');
            }         

            return const CircularProgressIndicator();
          },
        ),
      )
      ),
      );
  }
}


void main() {
  runApp(const MyApp());
}





