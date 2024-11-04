// Register_page/services/user_service.dart
import 'dart:convert';
import 'dart:io';
import 'package:car_parking_app/Register_page/model/user_reg_model.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../app_contants/app_urls.dart';

Future<UserRegModel> customerService({
  required String name,
  required String email,
  required String phnnumber,
  required String password,
  required String usernames,
  // required String carnumber,
  File? imageFile, // If you want to send an image or file
}) async {
  try {
    final url = Uri.parse(Urls.customer);

    var request = http.MultipartRequest('POST', url);

    // Add the text fields to the request
    // request.fields['image'] = imagefile;
    request.fields['name'] = name;
    request.fields['email'] = email;
    request.fields['phone_number'] = phnnumber;
    request.fields['user.password'] = password;
    request.fields['user.username'] = usernames;


    final streamedResponse = await request.send();

    // Convert the streamed response to a regular response
    final resp = await http.Response.fromStream(streamedResponse);

    final Map<String, dynamic> decoded = jsonDecode(resp.body);
    print(resp.body);

    if (resp.statusCode == 200) {
      final response = UserRegModel.fromJson(decoded);
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
