import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hazir_ta/student_screens/studentcoursePage.dart';
import 'package:hazir_ta/tutor_screens/tutorCoursePage.dart';
import 'package:hazir_ta/tutor_screens/tutorSessionInfo.dart';
import 'package:table_calendar/table_calendar.dart';

class TutorProfile extends StatefulWidget {
  @override
  _TutorProfileState createState() => _TutorProfileState();
}

class _TutorProfileState extends State<TutorProfile> {

  CalendarController _calendarController = CalendarController();

  profileAppBar() {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 310),
      child: Container(
          height: 310,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0
                        ),
                      ),
                      Text("Abuzar Rasool",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                          Icons.forward_to_inbox_sharp,
                          color: Colors.white,
                      ),
                      onPressed: () {}
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 53,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("profilepic.png"),
                ),
              ),
              SizedBox(height: 10.0,),
              Text("Average Ratings",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_half,
                    color: Colors.white,
                    size: 18,
                  ),
                  Center(
                    child: Text("4.9",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15.0,),
              Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                    ),
                    child: Text("Rate tutor",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                        fontSize: 16.0
                      ),
                    ),
                  ),
                  splashColor: Theme.of(context).primaryColor,
                  highlightColor: Theme.of(context).primaryColor,
                  onTap: () {
                      print("working");
                  },
                ),
              )

            ],
          ),
        ),
    );
  }


  tutoredCourses() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("Tutored Courses",
            style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
        ),
        Container(
          width: double.maxFinite,
          height: 200,
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.right,
            color: Theme.of(context).primaryColor,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TutorCoursePage()),
                        );
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(30.0),
                        elevation: 5.0,
                        child: Container(
                          height: 150,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("CS-225",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      letterSpacing: 1.0,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22
                                  ),),
                                Text("Object Oriented Programming",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      letterSpacing: 1.0,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12
                                  ),),
                                Text("L1",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      letterSpacing: 1.0,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12
                                  ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        )
      ],
    );
  }

  sessionCalenderView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("All Sesssions",
            style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
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


  timeSlotsView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Text("Timeslots",
            style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
        ),
        Container(
          child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TutorSessionInfoScreen()),
                      );
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(30.0),
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white
                            ),
                            child: Center(
                                child: Text("General Session",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 164,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Theme.of(context).primaryColor
                            ),
                            child: Center(
                                child: Text("2:15pm - 3:00pm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: profileAppBar(),
          body: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(
              vertical: 20.0
            ),
            children: [
              tutoredCourses(),
              sessionCalenderView(),
              timeSlotsView()
            ],
          ),
        )
    );
  }
}
