part of 'table_bloc.dart';

@immutable
abstract class TableState {}

class TableInitial extends TableState {}

class TableDataLoadedState extends TableState{
  final List<dynamic> tableData;

  TableDataLoadedState( this.tableData);
}
