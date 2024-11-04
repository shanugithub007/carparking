// Login_Page/services/login_service.dart
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../app_contants/app_urls.dart';
import '../model/login_model.dart';

Future<LoginModel> LoginService({
  required String password,
  required String usernames,
  // required String carnumber,
  // File? imageFile, // If you want to send an image or file
}) async {
  try {
    final url = Uri.parse(Urls.login);

    var request = http.MultipartRequest('POST', url);

    // Add the text fields to the request
    // request.fields['image'] = imagefile;
    request.fields['password'] = password;
    request.fields['username'] = usernames;


    final streamedResponse = await request.send();

    // Convert the streamed response to a regular response
    final resp = await http.Response.fromStream(streamedResponse);

    final Map<String, dynamic> decoded = jsonDecode(resp.body);
    print(resp.body);

    if (resp.statusCode == 200) {
      final response = LoginModel.fromJson(decoded);
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
