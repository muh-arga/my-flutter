import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_flutter/data/model/tourism_place.dart';

class ApiService {
  static final String _baseUrl = "https://toursim-place.herokuapp.com/api/";

  Future<PlaceResult> findAll() async {
    final response = await http.get(Uri.parse(_baseUrl + "places"));
    if (response.statusCode == 200) {
      return PlaceResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('failed load places');
    }
  }
}
