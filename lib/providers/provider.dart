import 'package:country/Servises/EuropianCountryServices.dart';
import 'package:country/models/countryDetailsResponseModel.dart';
import 'package:flutter/material.dart';

class ProviderClass extends ChangeNotifier{
List<CountryDetailsResponse> countryList = [];
List<CountryDetailsResponse> filteredCountryList = [];

void getCountry(List<CountryDetailsResponse> dataFromServer){
countryList = dataFromServer;
filteredCountryList = countryList;
 
   
print('total data ${filteredCountryList.length}');
}
List<CountryDetailsResponse> getFilteredCountry(){
  
  return filteredCountryList;
  
}

}