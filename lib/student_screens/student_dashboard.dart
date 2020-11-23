import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hazir_ta/student_screens/addNewCourse.dart';
import 'package:hazir_ta/student_screens/studentAccountSettings.dart';
import 'package:table_calendar/table_calendar.dart';

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  CalendarController _calendarController = CalendarController();


  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  dashboardAppBar () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          fit: StackFit.loose,
          children: [
            Material(
              shadowColor: Colors.black,
              elevation: 5,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70.0)
              ),
              child: Container(
                height: 170,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(70.0)
                    )
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                  vertical: 45.0,
                  horizontal: 45.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage("https://i2.wp.com/philanthropywomen.org/wp-content/uploads/2020/06/Screen-Shot-2020-06-29-at-3.15.06-PM.png?fit=277%2C407&ssl=1")
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 26.0
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ),
                        Text("Emma",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 25.0,
          ),
          child: Material(
            color: Theme.of(context).primaryColor,
            elevation: 5,
            borderRadius: BorderRadius.circular(70),
            child: InkWell(
              focusColor: Colors.white,
              splashColor: Theme.of(context).primaryColor,
              highlightColor: Theme.of(context).primaryColor,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.person_rounded,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              borderRadius: BorderRadius.circular(40),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentAccountSettings()),
                );
              },
            ),
          ),
        )
      ],
    );
  }

  enrolledCourses() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Enrolled Courses",
                style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
              IconButton(
                  icon: Icon(
                      Icons.add,
                      color: Colors.black54,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentNewCourse()),
                    );
                  })
            ],
          ),
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
                              Text("CS-335",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22
                                ),),
                              Text("Database Systems",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),),
                              Text("T2",
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("All Sesssions",
                style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
              IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black54,
                  ),
                  onPressed: () {

                  })
            ],
          ),
        ),
        Material(
          elevation: 5.0,
          child: TableCalendar(
            rowHeight: 45.0,
            calendarController: _calendarController,
            calendarStyle: CalendarStyle(
              todayColor: Theme.of(context).accentColor,
              selectedColor: Theme.of(context).primaryColor,
              markersColor: Theme.of(context).primaryColorLight,
            ),
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
          padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 30.0
          ),
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
                );
              }
          ),
        )
      ],
    );
  }

  mainWidget() {
    return ListView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        dashboardAppBar(),
        enrolledCourses(),
        sessionCalenderView(),
        timeSlotsView()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: mainWidget()
      ),
    );
  }
}
