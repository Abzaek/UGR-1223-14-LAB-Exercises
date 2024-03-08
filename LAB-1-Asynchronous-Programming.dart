import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:math';

Future<void> main() async {
  String quote = await fetchQuote();
  print("Exercise 1: Random Quote: $quote");

  downloadFile();

  List<String> data = await loadDataFromDatabase();
  print("Exercise 3: Loaded Data: $data");

  await fetchWeatherData('London');
}




// Exercise 1: Asynchronous function to simulate network call and return a random quote
Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs",
    "Life is what happens when you're busy making other plans. - John Lennon"
  ];

  int index = Random().nextInt(quotes.length);
  return quotes[index];
}



// Exercise 2: Downloading a file from a URL using the http package asynchronously
void downloadFile() async {
  try {
    final url = 'https://youtu.be/SwNvIzpOxFI?si=cmZhSlGXXYsqmewb'; 
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      final file = File('hello.mp4'); // Replace with the desired file name
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully.');
    } else {
      print('Failed to download file: ${response.statusCode}');
    }
  } catch (e) {
    print('Failed to download file: $e');
  }
}




      // Exercise 3: Simulating loading data from a database asynchronously
Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 3));
  return ["Data 1", "Data 2", "Data 3"];
}




      // Exercise 4: Fetching weather data from an API using the http package asynchronously
Future<void> fetchWeatherData(String city) async {
  String apiKey = 'ec4db5ca4f269ee964cab9fc35b0c867';
  String apiUrl = 'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

  var response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    Map<String, dynamic> weatherData = json.decode(response.body);
    double temperature = (weatherData['main']['temp'] - 273.15); // Convert Kelvin to Celsius
    String weatherDescription = weatherData['weather'][0]['description'];
    print("Exercise 4: Current Temperature in $city: ${temperature.toStringAsFixed(2)}°C");
    print("Exercise 4: Weather Condition in $city: $weatherDescription");
  } else {
    print("Exercise 4: Failed to fetch weather data: ${response.statusCode}");
  }
}
