import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<dynamic> getCurrentMatches() async {
    dynamic responseJson;
    try{
      String url = "https://api.cricapi.com/v1/currentMatches?apikey=f2c6565b-7f2a-4876-a247-e86d27fc53cd&offset=0";
      final response = await http.get(Uri.parse(url));
      responseJson = _response(response);
      return responseJson;
    }on SocketException catch(e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }on TimeoutException catch(e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }on Exception catch(e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}

dynamic _response(http.Response response) {
  switch(response.statusCode) {
    case 200:
      {
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      }
    case 201:
      {
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      }
    case 400:
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 401:
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 403:
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 404:
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 500:
      var responseJson = json.decode(response.body.toString());
      return responseJson;
  }
}