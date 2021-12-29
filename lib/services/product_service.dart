import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_app/models/ModelHandler.dart';

class HttpService {
  static final token = "m5n8l1g9c6r2oli08feg3qowoaw9lkxr";
//   Dio _dio = Dio();
  static final baseUrl =
      "http://192.168.1.139/magento/rest/V1/products?searchCriteria[pageSize]=20";
  static Map<String, String> get headers => {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      };
  static Future<List<Items>> getProduct() async {
    var url = baseUrl;
    print("fetching $url");
    var response = await http.get(Uri.parse(baseUrl), headers: headers);
    if (response.statusCode != 200) {
      throw Exception(
          "Request to $url failed with status ${response.statusCode}: ${response.body}");
    }
    if (response.statusCode == 200) {
      final data = parseProducts(response.body);
      return data;
    } else {
      throw Exception();
    }
  }

  static List<Items> parseProducts(String responseBody) {
    // final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    final parsed = jsonDecode(responseBody);

    return parsed['items'].map<Items>((json) => Items.fromJson(json)).toList();
  }
}
