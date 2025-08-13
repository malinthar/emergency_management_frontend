import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> callFlaskApi(String query) async {
  final address = "10.0.2.2";
  final url = Uri.parse("http://$address:5000/api/query");

  try {
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"query": query}),
    );
    
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['response'];
    } else {
      throw Exception(response.statusCode);
    }
  } catch (e) {
    throw Exception(e);
  }
}
