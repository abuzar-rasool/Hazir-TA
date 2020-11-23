import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TutorAccountSettings extends StatefulWidget {
  @override
  _TutorAccountSettingsState createState() => _TutorAccountSettingsState();
}

class _TutorAccountSettingsState extends State<TutorAccountSettings> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor
    ));

    settingsContent() {
      return Padding(
        padding: EdgeInsets.symmetric(
            vertical: 60.0
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  radius: 73.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://i2.wp.com/philanthropywomen.org/wp-content/uploads/2020/06/Screen-Shot-2020-06-29-at-3.15.06-PM.png?fit=277%2C407&ssl=1"),
                    radius: 70.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Theme.of(context).primaryColor
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0,
                  left: 50.0,
                  right: 50.0
              ),
              child: TextFormField(
                initialValue: "Abuzar Rasool",
                decoration: new InputDecoration(
                  labelText: "Your name",
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
                initialValue: "abc@gmail.com",
                decoration: new InputDecoration(
                  labelText: "Your email",
                  labelStyle: TextStyle(
                      fontSize: 18.0
                  ),
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(
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
                initialValue: "06 hours",
                decoration: new InputDecoration(
                  labelText: "Weekly hours (tentative)",
                  labelStyle: TextStyle(
                      fontSize: 18.0
                  ),
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(
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
                        child: Text("Save changes",
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
        ),
      );
    }

    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text("Account settings"),
          ),
          body: settingsContent(),
        )
    );
  }
}
