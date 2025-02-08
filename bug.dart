```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the request or JSON decoding
    print('Error: $e');
    // You might want to rethrow the exception or handle it differently based on your needs.
    rethrow; // Rethrowing allows calling function to handle
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