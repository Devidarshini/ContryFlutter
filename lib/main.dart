
import 'dart:async';


import 'package:country/providers/provider.dart';
import 'package:country/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  
  
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {

 

 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  


  @override
  void initState() {
    super.initState();
    loadData();
  }

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    // print('container build');
    return Scaffold(
      body: Column(
        children: [
          AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 5000),
            // The green box must be a child of the AnimatedOpacity widget.
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: new LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffffff), Color(0xffDEF2FC)],
                  ),
                ),
                child: Center(
                  child: Text('CountyTales',
                  style: TextStyle(fontSize: 15.0,
                  color: Colors.indigo[700]
                  ),
                  )
                  ),
                )),
          
        ],
      ),
    );
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 1), onDoneLoading);
  }

  onDoneLoading() async {
    setState(() {
      _visible = !_visible;
    });
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => 
    CliniMdApp()));
  }
}
class CliniMdApp extends StatelessWidget {
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderClass()),
      ],
    child:
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
    primaryColor: Colors.indigo[700],
    secondaryHeaderColor: Colors.black,
    
        ),
        initialRoute: 'home',
        routes: {
    'home': (context) => Home(),
        },
       )
    );
  }
}