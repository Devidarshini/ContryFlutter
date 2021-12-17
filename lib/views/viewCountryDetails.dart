import 'package:country/models/countryDetailsResponseModel.dart';
import 'package:flutter/material.dart';

class CountryDetilsScreen extends StatefulWidget {
  CountryDetilsScreen({ Key key,this.selectedCountry}) : super(key: key);
  CountryDetailsResponse selectedCountry;
  @override
  _CountryDetilsScreenState createState() => _CountryDetilsScreenState();
}

class _CountryDetilsScreenState extends State<CountryDetilsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.selectedCountry.name.common),),
      body: Container(
        height: MediaQuery.of(context).size.height*.9,
        width:  MediaQuery.of(context).size.width,
        color: Color(0xffDEF2FC),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 270.0,
                    width: MediaQuery.of(context).size.width*.85,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(widget.selectedCountry.flags.png))),
                    ),
                ],
              ),
                SizedBox(height: 40.0,),
                //countryName,Country Code,capital,currency,dialing code,population,Demonym
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Container(
                    width: 270.0,
                    child: Text('Country Name:',
                    style: TextStyle(fontSize: 15.0,
                 fontWeight: FontWeight.bold
                 ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Text(widget.selectedCountry.name.common)
                ],),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 Container(
                   width: 270.0,
                   child: Text('Country Code:',
                   style: TextStyle(fontSize: 15.0,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                 SizedBox(width: 10.0,),
                  Text(widget.selectedCountry.fifa)
                ],),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 Container(
                   width: 270.0,
                   child: Text('Country capital:',
                   style: TextStyle(fontSize: 15.0,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                 SizedBox(width: 10.0,),
                  Text(widget.selectedCountry.capital[0])
                ],),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 Container(
                   width: 270.0,
                   child: Text('Country currency:',
                   style: TextStyle(fontSize: 15.0,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                 SizedBox(width: 10.0,),
                 Text('Not Found')
                  
                ],),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 Container(
                   width: 270.0,
                   child: Text('dialing code:',
                   style: TextStyle(fontSize: 15.0,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                 SizedBox(width: 10.0,),
                 Text("${widget.selectedCountry.idd.root}${widget.selectedCountry.idd.suffixes[0]}")
                  
                ],),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       Text('Country Name:',
                //       style: TextStyle(fontSize: 15.0,
                //  fontWeight: FontWeight.bold
                //  ),
                //       ),
                //   SizedBox(width: 10.0,),
                //   Text('')
                //     ],
                //   ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 Container(
                   width: 270.0,
                   child: Text('population:',
                   style: TextStyle(fontSize: 15.0,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                 SizedBox(width: 10.0,),
                  Text(widget.selectedCountry.population.toString())
                ],),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 Container(
                   width:270.0,
                   child: Text('Demonym:',
                   style: TextStyle(fontSize: 15.0,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                 SizedBox(width: 10.0,),
                  Text(widget.selectedCountry.demonyms.eng.f)
                ],),
                SizedBox(height: 20.0,),
            ],
          ),
        ),
        ),
      
    );
  }
}