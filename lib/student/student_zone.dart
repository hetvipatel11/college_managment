import 'package:college_management/Home_page.dart';
import 'package:college_management/student/exam/exam.dart';
import 'package:college_management/utils/ZoneImage.dart';
import 'academic_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'student_profile.dart';
import 'fees.dart';
import 'result.dart';

class StudentZone extends StatefulWidget {
  @override
  _StudentZoneState createState() => _StudentZoneState();
}

class _StudentZoneState extends State<StudentZone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return HomePage();
              }));
            },
            child: Icon(Icons.arrow_back, size: 50,),
          ),
          backgroundColor: Color(0xff002c51),
          centerTitle: true,
          title: Text(
            'STUDENT ZONE',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 15.0, bottom: 16.0),

            child: Column(children: <Widget>[
              SizedBox(height: 24),
              InkWell(
                child:Row(
                  children: <Widget>[
                    InkWell(
                        child: ZoneImage("assets/academic_calendar.png", "Calendar"),
                        onTap:  () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return  Calendar();
                          }));
                        }
                    ),
                    SizedBox(width: 14,),
                    InkWell(
                        child: ZoneImage("assets/student_attendance.png", "Attendance"),
                        onTap:  () {}
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Row(
                children: <Widget>[
                  InkWell(
                      child: ZoneImage("assets/student_result.png", "Result"),
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return  Result();
                        }));
                      }
                  ),
                  SizedBox(width: 14,),
                  InkWell(
                      child: ZoneImage("assets/academic_fees.png", "Fees"),
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return  FeePage();
                        }));
                      }
                  ),
                ],
              ),
              SizedBox(height: 14,),
              Row(
                children: <Widget>[
                  InkWell(
                      child: ZoneImage("assets/student_profile.png", "Profile"),
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return StudentProfile();
                        }));
                      }
                  ),
                  SizedBox(width: 14,),
                  InkWell(
                      child: ZoneImage("assets/Exam.png", "Exam"),
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return exampage();
                        }));
                      }
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


