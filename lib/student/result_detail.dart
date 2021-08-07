// TODO Implement this library.
import 'package:college_management/student/result.dart';
import 'package:flutter/material.dart';
import 'result.dart';

class DetailsPage extends StatelessWidget {

  final int index;
  DetailsPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Result();
                }));
              },
              child: Icon(Icons.arrow_back, size: 50,),
            ),
            title: Text(
              'Result',
              style: TextStyle(fontSize: 30),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor:  Color(0xff002c51),
          ),
        ),
        body: Center(
          child: Text('Result Semester - $index'),
        )

    );
  }
}