import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentSessionInfoScreen extends StatefulWidget {
  @override
  _StudentSessionInfoScreenState createState() => _StudentSessionInfoScreenState();
}

class _StudentSessionInfoScreenState extends State<StudentSessionInfoScreen> {

  infoContent() {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TextFormField(
            initialValue: "General Session",
            autofocus: false,
            readOnly: true,
            decoration: new InputDecoration(
              labelText: "Session type",
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
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TextFormField(
            initialValue: "CS-335: Database Systems",
            autofocus: false,
            readOnly: true,
            decoration: new InputDecoration(
              labelText: "Course",
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
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TextFormField(
            initialValue: "24 November 2020",
            autofocus: false,
            readOnly: true,
            decoration: new InputDecoration(
              labelText: "Date",
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
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 200.0,
                child: TextFormField(
                  initialValue: "4:00 pm",
                  autofocus: false,
                  readOnly: true,
                  decoration: new InputDecoration(
                    labelText: "Start time",
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
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 200,
                child: TextFormField(
                  initialValue: "5:00 pm",
                  autofocus: false,
                  readOnly: true,
                  decoration: new InputDecoration(
                    labelText: "End time",
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
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TextFormField(
            initialValue: "Online: Zoom",
            autofocus: false,
            readOnly: true,
            decoration: new InputDecoration(
              labelText: "Medium",
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
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: 250,
            child: TextFormField(
              maxLength: 300,
              maxLines: 100,
              initialValue: "I will be reviewing ERD and normalization,",
              autofocus: false,
              readOnly: true,
              decoration: new InputDecoration(
                labelText: "Notes",
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
                enabledBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text("Booked by",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0
                ),
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35.0,
                          vertical: 18.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage("profilepic.png"),
                            ),
                          ),
                          SizedBox(width: 50.0),
                          Text("Faaz Abidi",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Session info"),
          ),
          body: infoContent(),
        )
    );
  }
}
