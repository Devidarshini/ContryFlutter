import 'package:country/Servises/getContinentServise.dart';
import 'package:country/models/countryDetailsResponseModel.dart';
import 'package:country/views/findCountries.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('County Regions'),
      ),
      body:Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:10.0,left:10,right: 10.0,bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width*0.97,
                        child:GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindCountries(region: "EUROPE",)));
                        },
                        child:Card(
                          color: Color(0xffDEF2FC),
                          child:Center(child: 
                          Text("EUROPE",
                          style: TextStyle(color: Colors.indigo,
                          fontWeight: FontWeight.bold
                          ),
                          ))
                        ) ,
                      )
                         
                 ),
                 
                
                      
                 Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width*0.97,
                      child:GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindCountries(region: "OCEANIA",)));
                      },
                      child:Card(
                        color: Color(0xffDEF2FC),
                        child:Center(child: Text('OCEANIA',
                        style: TextStyle(color: Colors.indigo,
                          fontWeight: FontWeight.bold
                          ),
                        ))
                      ) ,
                    )
                       
                  ,
                ),
                 Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width*0.97,
                      child:GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindCountries(region: "AFRICA",)));
                      },
                      child:Card(
                        color: Color(0xffDEF2FC),
                        child:Center(child: Text('AFRICA',
                        style: TextStyle(color: Colors.indigo,
                          fontWeight: FontWeight.bold
                          ),
                        ))
                      ) ,
                    )
                       
                  ,
                ),
                 Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width*0.97,
                      child:GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindCountries(region: "ASIA",)));
                      },
                      child:Card(
                        color: Color(0xffDEF2FC),
                        child:Center(child: Text('ASIA',
                        style: TextStyle(color: Colors.indigo,
                          fontWeight: FontWeight.bold
                          ),
                        ))
                      ) ,
                    )
                       
                  ,
                ),
                 Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width*0.97,
                      child:GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindCountries(region: "NORTH AMERICA",)));
                      },
                      child:Card(
                        color: Color(0xffDEF2FC),
                        child:Center(child: Text('NORTH AMERICA',
                        style: TextStyle(color: Colors.indigo,
                          fontWeight: FontWeight.bold
                          ),
                        ))
                      ) ,
                    )
                       
                  ,
                ),
                 Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width*0.97,
                      child:GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindCountries(region: "SOUTH AMERICA",)));
                      },
                      child:Card(
                        color: Color(0xffDEF2FC),
                        child:Center(child: Text('SOUTH AMERICA',
                        style: TextStyle(color: Colors.indigo,
                          fontWeight: FontWeight.bold
                          ),
                        ))
                      ) ,
                    )
                       
                  ,
                ),
                 Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width*0.97,
                      child:GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindCountries(region: "ANTARCTIC",)));
                      },
                      child:Card(
                        color: Color(0xffDEF2FC),
                        child:Center(child: Text('ANTARCTICA',
                        style: TextStyle(color: Colors.indigo,
                          fontWeight: FontWeight.bold
                          ),
                        ))
                      ) ,
                    )
                       
                  ,
                ),
                
                
              ],
            ),
          )),
      )
    );
  }
}