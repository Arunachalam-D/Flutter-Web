import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_practice/presentation/widgets/table_tile.dart';
import '../../bloc/table_bloc/table_bloc.dart';
import '../../data/api_data/grid_api_fetch.dart';
import '../../data/api_data/table_api_fetch.dart';
import '../../domain/modals/grid_data_modal.dart';
import '../widgets/table.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      TableBloc()
        ..add(FetchTableDataEvent()),
      child: const Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

                    TableData(),

          ],
        ),
      ),
    );
  }

//String? url, String? title
  Widget buildCarousel(String? title, String? url) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
          color: Colors.grey
      ),
    );
  }
}

// FutureBuilder(
//     future: getGridData(),
//     builder: (context, AsyncSnapshot<List<GridData>> snapshot) {
//       if (snapshot.connectionState == ConnectionState.done) {
//         return Container(
//           height: 300,
//           width: 200,
//           child: Text("snapshot.data![index]['title']"),
//         );
//       }
//
//       else {
//         return const CircularProgressIndicator();
//       }
//     }
// )