import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



Future<weather> fetch(String city) async{

    final response = await http
      .get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&appid=8a202bb67be425afb240591d16fc5430'));
    
    if (response.statusCode == 200)
    {
      return weather.fromJson(jsonDecode(response.body) as Map<String,dynamic>);
    }else {
      throw Exception('Failed to Data');
    }

}

class weather {

  final String name;
  final double temp;
  final String description;

  weather({
    required this.name,
    required this.temp,
    required this.description
  });

  factory weather.fromJson(Map<String, dynamic> json) {
      return weather(name: json['name'],temp: json['main']['temp'],description: json['weather'][0]['description']);
  }
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  late String city = "Bangkok";
  final TextEditingController citytext = TextEditingController();
  late Future<weather> futureCity;
  bool check = false;

  @override
  void initState(){
    super.initState();
    futureCity = fetch(city);
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
      body:  Center(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Container(
              padding: const EdgeInsets.all(20),
              child:  TextField(
                controller: citytext,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter City"
                ),
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              check = true;
              city = citytext.text.toUpperCase();
              setState(() {
                futureCity = fetch(city);
              });
            }, child: const Text('OK')),
            Visibility(visible: check,child: 
            FutureBuilder(future: futureCity, builder: (context,x){
              if (x.hasData){
                return Column(
                  children: [Text(x.data!.name),Text(x.data!.temp.toString()),Text(x.data!.description)]
                );
              }
              else if(x.hasError){
                return Text("${x.error}");
              }
              return const CircularProgressIndicator();
              }),
            )
            
          

          ],
        ),
        ),
      )
      );
  }
}


void main() {
  runApp(const MyApp());
}