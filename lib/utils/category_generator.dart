
import 'package:nb_utils/nb_utils.dart';

import '../models/orders_model.dart';
import 'images.dart';

List<Orders> categoryList() {
  List<Orders> categoryListData = [];
  categoryListData.add(Orders(categoryName: "New Orders"));
  categoryListData.add(Orders(categoryName: "Accepted Orders"));
  categoryListData.add(Orders(categoryName: "Rejected Orders"));
  return categoryListData;
}

List<Orders> HistotyCategoryList() {
  List<Orders> categoryListData = [];
  categoryListData.add(Orders(categoryName: "Order History"));
  return categoryListData;
}

List<Orders> hotelList() {
  List<Orders> hotelListData = [];
  hotelListData.add(Orders(
      img: rf_hotel1, color: greenColor.withOpacity(0.6), categoryName: "Order Id - NFD1234", price: "RS. 8000 / ", rentDuration: "per month", location: "Mahalaxmi Lalitpur", address: "Available", description: "9 Applied | ", views: "20 Views"));
  hotelListData.add(Orders(img: rf_hotel2, color: redColor, categoryName: "Order Id - NFD1234", price: "RS. 5000 / ", rentDuration: "per day", location: "Imadol", address: "Unavailable", description: "5 Applied | ", views: "10 Views"));
  hotelListData.add(Orders(
      img: rf_hotel3, color: greenColor.withOpacity(0.6), categoryName: "Order Id - NFD1234", price: "RS. 6000 / ", rentDuration: "per week", location: "Kupondole", address: "Available", description: "10 Applied | ", views: "06 Views"));
  hotelListData
      .add(Orders(img: rf_hotel4, color: redColor, categoryName: "Order Id - NFD1234", price: "RS. 5000 / ", rentDuration: "per month", location: "Koteshwor Lalitpur", address: "Unavailable", description: "16 Applied | ", views: "12 Views"));
  hotelListData
      .add(Orders(img: rf_hotel5, color: greenColor.withOpacity(0.6), categoryName: "Order Id - NFD1234", price: "RS. 2000 / ", rentDuration: "per day", location: "Imadol", address: "Available", description: "9 Applied | ", views: "25 Views"));
  hotelListData.add(Orders(img: rf_hotel2, color: redColor, categoryName: "Order Id - NFD1234", price: "RS. 5000 / ", rentDuration: "per day", location: "Imadol", address: "Unavailable", description: "5 Applied | ", views: "10 Views"));

  hotelListData.add(Orders(
      img: rf_hotel1, color: greenColor.withOpacity(0.6), categoryName: "Order Id - NFD1234", price: "RS. 8000 / ", rentDuration: "per month", location: "Mahalaxmi Lalitpur", address: "Available", description: "9 Applied | ", views: "20 Views"));
  hotelListData.add(Orders(img: rf_hotel2, color: redColor, categoryName: "Order Id - NFD1234", price: "RS. 5000 / ", rentDuration: "per day", location: "Imadol", address: "Unavailable", description: "5 Applied | ", views: "10 Views"));
  hotelListData.add(Orders(
      img: rf_hotel3, color: greenColor.withOpacity(0.6), categoryName: "Order Id - NFD1234", price: "RS. 6000 / ", rentDuration: "per week", location: "Kupondole", address: "Available", description: "10 Applied | ", views: "06 Views"));
  hotelListData
      .add(Orders(img: rf_hotel4, color: redColor, categoryName: "Order Id - NFD1234", price: "RS. 5000 / ", rentDuration: "per month", location: "Koteshwor Lalitpur", address: "Unavailable", description: "16 Applied | ", views: "12 Views"));
  hotelListData
      .add(Orders(img: rf_hotel5, color: greenColor.withOpacity(0.6), categoryName: "Order Id - NFD1234", price: "RS. 2000 / ", rentDuration: "per day", location: "Imadol", address: "Available", description: "9 Applied | ", views: "25 Views"));
  hotelListData.add(Orders(img: rf_hotel2, color: redColor, categoryName: "Order Id - NFD1234", price: "RS. 5000 / ", rentDuration: "per day", location: "Imadol", address: "Unavailable", description: "5 Applied | ", views: "10 Views"));

  return hotelListData;
}