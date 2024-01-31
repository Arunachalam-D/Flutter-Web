import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/constants/constant_widgets.dart';

class TableTile extends StatelessWidget {

  final String title,url,description,time;

  const TableTile({super.key, required this.url, required this.title, required this.description, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                sizedBox15(),
               Text(time,style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.5,
        )
      ],
    );
  }
}
