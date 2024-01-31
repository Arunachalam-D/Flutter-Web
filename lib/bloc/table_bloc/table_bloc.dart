import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../core/constants/api_key.dart';
import '../../data/api_data/table_api_fetch.dart';

part 'table_event.dart';
part 'table_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  TableBloc() : super(TableInitial()) {
    on<FetchTableDataEvent>(fetchTableDataEvent);
  }

  FutureOr<void> fetchTableDataEvent(FetchTableDataEvent event, Emitter<TableState> emit) async{

    final response =  await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?country=in&category=technology&pageSize=100&apiKey=${ApiKey.key}"));
    Map result =  jsonDecode(response.body);
    print("Data fetched in Bloc");
    final List<dynamic> tableData = result['articles'];
    emit(TableDataLoadedState(tableData));
  }
}
