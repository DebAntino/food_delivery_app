import 'dart:convert';
import 'package:testing/models/resturant_info.dart';
import 'package:http/http.dart';

//import 'package:food_delivery_app/models/resturant_info.dart';

class ResturantDetails {
  Future<void> getData() async {
    try {
      //make request
      Response response = await get(Uri.parse(
          'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=47.6204'));
      Map data = jsonDecode(response.body);
      //get properties from data
      //String namw = data['name'];
    } catch (e) {
      print('Caught Error: $e');
    }
  }

  List<Map> resturantInfo = [
    {
      "iconUrl": "assets/burger_pizza.jpg",
      "resturantName": "KFC",
      "foods": "Pizza, Burger",
      "price": 200,
      "time": 52,
      "rating": 4.6,
      "features": "Well Sanitized, Home Delivery",
      "promoted": true,
      "closing": 30
    },
    {
      "iconUrl": "assets/french_fries.jpg",
      "resturantName": "MacDonalds",
      "foods": "Burger, French Fries",
      "price": 200,
      "time": 70,
      "rating": 4.8,
      "features": "Well Sanitized",
      "promoted": false,
      "closing": 45
    },
    {
      "iconUrl": "assets/coffee_icon.png",
      "resturantName": "Cafe Coffee Day",
      "foods": "Coffee",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": false,
      "closing": 10
    },
    {
      "iconUrl": "assets/food_items.png",
      "resturantName": "Biriyani Plaza",
      "foods": "Biriyani, Fried Rice",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": true,
      "closing": 20
    },
    {
      "iconUrl": "assets/fried_rices.png",
      "resturantName": "Restaurant 5",
      "foods": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": true,
      "closing": 45
    },
    {
      "iconUrl": "assets/indian_thali.png",
      "resturantName": "Restaurant 6",
      "foods": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": false,
      "closing": 55
    },
    {
      "iconUrl": "assets/jackfroots.png",
      "resturantName": "Restaurant 7",
      "foods": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": true,
      "closing": 20
    },
    {
      "iconUrl": "assets/samosa.png",
      "resturantName": "Restaurant 8",
      "foods": "Pizza",
      "price": 200,
      "time": 70,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": false,
      "closing": 25
    },
    {
      "iconUrl": "assets/veg_dish.png",
      "resturantName": "Restaurant 9",
      "foods": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": true,
      "closing": 20
    },
    {
      "iconUrl": "assets/french_fries.jpg",
      "resturantName": "Restaurant 10",
      "foods": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": false,
      "closing": 15
    },
    {
      "iconUrl": "assets/samosa.png",
      "resturantName": "Restaurant 11",
      "foods": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": true,
      "closing": 35
    },
    {
      "iconUrl": "assets/food_items.png",
      "resturantName": "Restaurant 12",
      "foods": "Pizza",
      "price": 200,
      "time": 70,
      "rating": 4.4,
      "features": "Well Sanitized",
      "promoted": false,
      "closing": 20
    },
  ];

  List<ResturantsModel> getResturantsModel() {
    List<ResturantsModel> list = [];
    for (var element in resturantInfo) {
      ResturantsModel resturantsModel = ResturantsModel(
        iconUrl: element["iconUrl"].toString(),
        resturantName: element["resturantName"].toString(),
        foods: element["foods"].toString(),
        price: element["price"],
        time: element["time"],
        rating: element["rating"],
        features: element["features"].toString(),
        promoted: element["promoted"],
        closing: element['closing'],
      );
      list.add(resturantsModel);
    }
    return list;
  }
}
