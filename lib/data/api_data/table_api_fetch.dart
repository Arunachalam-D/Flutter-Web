import 'dart:convert';
import 'package:flutter_web_practice/core/constants/api_key.dart';
import'package:http/http.dart' as http;
Future<List>fetchTableData() async{
    final response =  await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?country=in&category=technology&pageSize=100&apiKey=${ApiKey.key}"));
    Map result =  jsonDecode(response.body);
    print("data fetched");
    return result['articles'];
}