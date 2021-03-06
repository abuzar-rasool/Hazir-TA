import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hazir_ta/student_screens/tutorProfileScreen.dart';
import 'package:table_calendar/table_calendar.dart';

class TutorCoursePage extends StatefulWidget {
  @override
  _TutorCoursePageState createState() => _TutorCoursePageState();
}

class _TutorCoursePageState extends State<TutorCoursePage> {
  CalendarController _calendarController = CalendarController();

  courseDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 15.0),
            child: Text(
              "Info",
              style: TextStyle(letterSpacing: 2.0, color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instructor",
                style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text("Qasim Pasta", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18))
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Teacher Assistant",
                style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text("Faaz Abidi", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18))
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Research Assistant",
                style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text("Talha Amin", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18))
            ],
          )
        ],
      ),
    );
  }

  sessionCalenderView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
          child: Text(
            "Your sessions",
            style: TextStyle(letterSpacing: 2.0, color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        TableCalendar(
          calendarController: _calendarController,
          calendarStyle: CalendarStyle(
            todayColor: Theme.of(context).accentColor,
            selectedColor: Theme.of(context).primaryColor,
            markersColor: Theme.of(context).primaryColorLight,
          ),
        ),
      ],
    );
  }

  availablePeerTutors() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Available TAs",
            style: TextStyle(letterSpacing: 2.0, color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TutorProfile()),
                      );
                    },
                    child: Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Theme.of(context).primaryColor,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage("profilepic.png"),
                                ),
                              ),
                              Text(
                                "Abuzar Rasool",
                                style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Avg Ratings",
                                    style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.star_half,
                                        color: Theme.of(context).primaryColor,
                                        size: 18,
                                      ),
                                      Center(
                                        child: Text(
                                          "4.4",
                                          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12.0),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Course Ratings",
                                    style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.star_half,
                                        color: Theme.of(context).primaryColor,
                                        size: 18,
                                      ),
                                      Center(
                                        child: Text(
                                          "4.9",
                                          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }

  courseDeleteButton() {
    return FlatButton(
      height: 60.0,
      color: Colors.red,
      padding: EdgeInsets.all(0.0),
      onPressed: () {
        print("pressed");
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
      child: Text(
        "Delete this course",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Theme.of(context).primaryColor));
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CS-335",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Database Systems",
                    style: TextStyle(fontSize: 23.0),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Section",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "T2",
                    style: TextStyle(fontSize: 23.0),
                  )
                ],
              )
            ],
          ),
        ),
        elevation: 5,
      ),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        physics: BouncingScrollPhysics(),
        children: [courseDetails(), sessionCalenderView(), availablePeerTutors(), courseDeleteButton()],
      ),
    ));
  }
}
