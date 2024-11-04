// Favorite_Page/services/fav_parking_spot.dart
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../app_contants/app_urls.dart';
import '../model/fav_parking_spot_model.dart';

Future<List<FavParkingSpot>> FavPageService() async {
  try {

    final resp = await http.get(
      Uri.parse(Urls.favparkingslot),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=utf-8',
      },
    );
    
    if (resp.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(resp.body);
      print(decoded);
      final List<FavParkingSpot> response = decoded.map((json) => FavParkingSpot.fromJson(json)).toList();
      return response;
    } else {
      throw Exception('Failed to load response');
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}

