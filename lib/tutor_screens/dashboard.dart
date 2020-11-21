import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TutorDashboard extends StatefulWidget {
  @override
  _TutorDashboardState createState() => _TutorDashboardState();
}

class _TutorDashboardState extends State<TutorDashboard> {

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
                  color: Colors.deepPurple,
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
            color: Colors.deepPurple,
            elevation: 8,
            borderRadius: BorderRadius.circular(70),
            child: InkWell(
              focusColor: Colors.white,
              splashColor: Colors.deepPurple,
              highlightColor: Colors.deepPurple,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                    Icons.person_rounded,
                    size: 33.0,
                    color: Colors.white,
                ),
              ),
              borderRadius: BorderRadius.circular(40),
              onTap: () {},
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
        Text("Enrolled Courses"),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  width: 50,
                  child: Text("Courses")
                );
              }
          ),
        ),
      ],
    );
  }

  mainWidget() {
    return Column(
      children: [
        // dashboardAppBar(),
        enrolledCourses()
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
