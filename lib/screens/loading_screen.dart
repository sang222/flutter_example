import 'package:flutter/material.dart';
import 'package:myapp/screens/location_screen.dart';
import 'package:myapp/services/weather.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
  @override
  void initState() {
    super.initState();
    getLocationData();
  }
  
  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData);
    }));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
