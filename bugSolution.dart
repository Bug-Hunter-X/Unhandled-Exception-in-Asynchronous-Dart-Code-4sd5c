```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print(jsonData); // Example of using data
    } else {
      // Handle non-200 status codes
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } on SocketException catch (e) {
    // Handle SocketException specifically (Network issues)
    print('Network error: $e');
    rethrow; 
  } on FormatException catch (e) {
    //Handle JSON format errors
    print('JSON format error: $e');
    rethrow; 
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow; //Re-throwing for higher level handling
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('An error occurred: $e');
  }
}
```