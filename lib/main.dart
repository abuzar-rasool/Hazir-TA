import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hazir_ta/student_screens/studentcoursePage.dart';
import 'package:hazir_ta/student_screens/student_dashboard.dart';
import 'package:hazir_ta/student_screens/tutorProfileScreen.dart';
import 'package:hazir_ta/tutor_screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(101, 40, 110, 1),
        accentColor: Color.fromRGBO(108, 60, 99, 1),
        primaryColorLight: Color.fromRGBO(213, 196, 190, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hazir TA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TutorDashboard()),
                  );
                },
                child: Text("Tutor Dashboard", style: TextStyle(color: Colors.white),)
            ),
            FlatButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentDashboard()),
                  );
                },
                child: Text("Student Dashboard", style: TextStyle(color: Colors.white),)
            ),
            FlatButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentCoursePage()),
                  );
                },
                child: Text("Student Course Page", style: TextStyle(color: Colors.white),)
            ),
            FlatButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TutorProfile()),
                  );
                },
                child: Text("Tutor Profile", style: TextStyle(color: Colors.white),)
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
