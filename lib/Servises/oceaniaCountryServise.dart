
import 'dart:convert';
import 'dart:io';
import 'package:country/models/countryDetailsResponseModel.dart';
import "package:http/http.dart" as http;
class getAllOceaniaCountryDetailsServise {
    
  var client = http.Client();
  
  
  
  Future<List<CountryDetailsResponse>> getAllOceaniaContryDetails() async {
  
    var url =  Uri.parse("https://restcountries.com/v3.1/all");
    print(url);
    var response = await client.get(
      url,
        headers: {
          'Content-type': 'application/json',
         'Accept': 'application/json',
        },
        );
        print(response.statusCode);
      
   
          if(response.statusCode == 200){
             var reslist = json.decode(response.body) as List;
             
      List<CountryDetailsResponse> countries = reslist.map((i) => CountryDetailsResponse.fromJson(i)).toList();
    
        List<CountryDetailsResponse> europianCountryList = [];
    
      Iterable<CountryDetailsResponse> europiancountries = countries.where((e) => e.continents.contains(Continent.OCEANIA));
      europianCountryList = europiancountries.toList();
        
    
      print('europian country length ${europianCountryList.length}');
              
            return europianCountryList;
             }
          
          else {
      throw HttpException(
          'Unexpected status code ${response.statusCode}:'
          ' ${response.reasonPhrase}');
          }
   }
  
}