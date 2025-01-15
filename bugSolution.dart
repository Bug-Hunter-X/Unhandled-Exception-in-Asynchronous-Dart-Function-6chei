```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = json.decode(response.body);
        return jsonData;
      } catch (jsonError) {
        print('JSON parsing error: $jsonError');
        // Handle JSON decoding errors
        return null; // Or throw a custom exception
      }
    } else {
      print('HTTP error: ${response.statusCode}');
      // Handle HTTP error codes appropriately.  Example: throw an exception to signal failure
      throw Exception('HTTP request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
    // Optionally rethrow the exception or handle it differently based on application needs.
    return null; // or rethrow the exception
  }
}
```