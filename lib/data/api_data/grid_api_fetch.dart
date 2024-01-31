import 'dart:convert';
import 'package:flutter_web_practice/domain/modals/grid_data_modal.dart';
import 'package:http/http.dart' as http;

Future<List<GridData>> getGridData() async{
  final response = await http.get(Uri.parse("https://api.slingacademy.com/v1/sample-data/photos"));
    List<GridData> item = jsonDecode(response.body);
    return item.map((data) => GridData.fromJson(data as Map<String, dynamic>)).toList();
}
