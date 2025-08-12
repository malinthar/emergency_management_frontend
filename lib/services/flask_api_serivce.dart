import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> callFlaskApi(String query) async {
  final address = "127.0.0.1";
  final url = Uri.parse("http://${address}:5000/api/query");

  try {
    final response = await http.post(url, headers: {"Content-Type": "application/json"}, body: jsonEncode({"query": query}));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data['response']);
    } else {
        print("Error: ${response.statusCode}");
      }
  } catch (e) {
    print(e);
  }
}