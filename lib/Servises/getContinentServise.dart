
import 'dart:convert';
import 'dart:io';
import 'package:country/models/countryDetailsResponseModel.dart';
import "package:http/http.dart" as http;
class getAllContinentService {
    
  var client = http.Client();
  
  
  Future<List<Continent>> getAllContinents() async {
  
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
            
             
            return Continent.values;
             }
          
          else {
      throw HttpException(
          'Unexpected status code ${response.statusCode}:'
          ' ${response.reasonPhrase}');
          }
   }
  
}