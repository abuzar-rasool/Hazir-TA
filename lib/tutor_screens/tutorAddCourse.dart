import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TutorNewCourse extends StatefulWidget {
  @override
  _TutorNewCourseState createState() => _TutorNewCourseState();
}

class _TutorNewCourseState extends State<TutorNewCourse> {

  newCourseForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 50.0,
              left: 50.0,
              right: 50.0
          ),
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: "E.g Database Systems",
              labelText: "Course name",
              labelStyle: TextStyle(
                  fontSize: 18.0
              ),
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0,
              left: 50.0,
              right: 50.0
          ),
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: "E.g CS-335",
              labelText: "Course code",
              labelStyle: TextStyle(
                  fontSize: 18.0
              ),
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0,
              left: 50.0,
              right: 50.0
          ),
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: "E.g T2",
              labelText: "Course Section",
              labelStyle: TextStyle(
                  fontSize: 18.0
              ),
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0,
              left: 50.0,
              right: 50.0
          ),
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: "E.g Lorem Posum",
              labelText: "Course Instructor",
              labelStyle: TextStyle(
                  fontSize: 18.0
              ),
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0,
              left: 50.0,
              right: 50.0
          ),
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: "E.g 10",
              labelText: "Weekly hours (tentative)",
              labelStyle: TextStyle(
                  fontSize: 18.0
              ),
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 30.0,
              left: 50.0,
              right: 50.0
          ),
          child: FlatButton(onPressed: () {},
              padding: EdgeInsets.zero,
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 50.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).primaryColor
                  ),
                  child: Center(
                    child: Text("Apply for approval",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),
              )
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text("Add a course"),
          ),
          body: newCourseForm(),
        )
    );
  }
}
