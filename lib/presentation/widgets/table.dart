import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_practice/bloc/table_bloc/table_bloc.dart';
import 'package:flutter_web_practice/presentation/widgets/table_tile.dart';

class TableData extends StatelessWidget {
  const TableData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(10, 10),
            )
          ]),
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const Text(
                "News Today",
                style: TextStyle(color: Colors.white, fontSize: 17),
              )),
          BlocBuilder<TableBloc, TableState>(
  builder: (context, state){
    if(state is TableDataLoadedState){
      return Expanded(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: state.tableData.length,
                itemBuilder: (context, index) {
                  return
                    TableTile(
                    title: state.tableData[index]['title'],
                    description: state.tableData[index]['description'].toString(),
                    url: state.tableData[index]['url'],
                    time: state.tableData![index]['publishedAt']
                  );
                }
            )

        ),
      );
    }
    else{
      return const Center(child: CircularProgressIndicator(color: Colors.blueAccent,));
    }

  },
),
        ],
      ),
    );
  }
}
