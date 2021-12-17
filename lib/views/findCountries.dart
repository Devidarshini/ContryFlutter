import 'package:country/Servises/AcianCountryServise.dart';
import 'package:country/Servises/AfficanContryServise.dart';
import 'package:country/Servises/AntercaticaCountryServise.dart';
import 'package:country/Servises/EuropianCountryServices.dart';
import 'package:country/Servises/NorthAmericanCountryServise.dart';
import 'package:country/Servises/oceaniaCountryServise.dart';
import 'package:country/Servises/southAmericanCountryServise.dart';
import 'package:country/models/countryDetailsResponseModel.dart';
import 'package:country/providers/provider.dart';
import 'package:country/views/viewCountryDetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FindCountries extends StatefulWidget {
 FindCountries({ Key key,this.region }) : super(key: key);
 String region;
  @override
  _FindCountriesState createState() => _FindCountriesState();
}

class _FindCountriesState extends State<FindCountries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Country'),),
      body: Container(
        child: Column(
          children: [
            Container(height: MediaQuery.of(context).size.height*0.8,
            child: FutureBuilder<List<CountryDetailsResponse>>(
          future: widget.region == "EUROPE"?
          getAllEuropianCountryDetailsService().getAllEuropianCountryDetails():
          widget.region == "AFRICA"?getAllAfricanCountryDetailsServise().getAllAfricanContryDetails():
          widget.region == "ASIA"?getAllAsianCountryDetailsServise().getAllAsianContryDetails():
          widget.region == "NORTH AMERICA"?getAllNorthAmericanCountryDetailsServise().getAllNorthAmericanContryDetails():
          widget.region == "SOUTH AMERICA"?getSouthAmericanCountries().getSouthAmericanContryDetails():
          widget.region == "OCEANIA"?getAllOceaniaCountryDetailsServise().getAllOceaniaContryDetails():
          getAllAntarcticaDetailsServise().getAllAntarcticaCountryDetails()
          
          ,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              print(snapshot.data.length.toString());
              Provider.of<ProviderClass>(context, listen: false)
                        .getCountry(snapshot.data);
          return Consumer<ProviderClass>(
                      builder: (context, blockList, child) {
                      
           return ListView.builder(
              itemCount:blockList.filteredCountryList.length,
              itemBuilder: (BuildContext context,int index){
              return Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width*97,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CountryDetilsScreen(
                      selectedCountry:blockList.filteredCountryList[index]
                    )));
                  },
                  child: Card(
                    color: Color(0xffDEF2FC),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 5.0,bottom: 5.0),
                      child: Container(
                        height: 30.0,
                        width:30.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(blockList.filteredCountryList[index].flags.png))
                        ),
                      ),
                    ),
                    Text(blockList.filteredCountryList[index].name.common,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15.0
                    ),
                    )
                  ],),
                    ),
                )
                 );

            }
            );
                       });
            }else{
              return Center(child: CircularProgressIndicator());
            }
          }
            )
            )
          ],
          ),
          ),
      
    );
  }

}