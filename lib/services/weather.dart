import 'package:myapp/services/location.dart';
import 'package:myapp/services/networking.dart';

const apiKey = 'a8f646f5a1912be67e9aece55d797a20';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(url: '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
  
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
  
    NetworkHelper networkHelper = NetworkHelper(url: '$openWeatherMapURL?lat=${location.lat}&lon=${location.long}&appid=$apiKey&units=metric');
  
    var weatherData = await networkHelper.getData();
    
    return weatherData;
  }
  
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
