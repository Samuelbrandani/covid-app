import 'dart:convert';

import 'package:corona_app/modals/brazil.modal.dart';
import 'package:http/http.dart' as http;


Future<BrasilCorona> fetchApi() async {
  final response = await http.get('https://covid19-brazil-api.now.sh/api/report/v1/brazil');

  if (response.statusCode == 200) {
    return BrasilCorona.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load api');
  }
}