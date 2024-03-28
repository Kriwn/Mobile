import 'package:flutter/material.dart';
import 'package:location/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage>{
  Location location = Location();

  bool _serviceEnabled = false;
  PermissionStatus _permissionGranted = PermissionStatus.denied;

  @override
  void initState(){
    super.initState();
    checkLocationPermisiion();

  location.onLocationChanged.listen((event) {
    print('${event.latitude} ${event.longitude}');
  });

  }

  Future<void> checkLocationPermisiion() async{
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled){
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled){
        return;
      }
    }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted){
      return;
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.my_location),
        onPressed: (){
          getLocation();
        },
      ),
    );
  }

  Future<void> getLocation() async{
    var locationData =  await location.getLocation();
    print("$locationData.latitude}, ${locationData.longitude}");
  }
        
}


