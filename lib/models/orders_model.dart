import 'package:flutter/material.dart';

class Orders{
  String? img;
  String? categoryName;
  String? description;
  String? address;
  String? price;
  String? rentDuration;
  String? location;
  String? views;
  bool? unReadNotification;
  Widget? newScreenWidget;
  Color? color;

  Orders({this.categoryName,this.img, this.description, this.color, this.address, this.price, this.rentDuration, this.location, this.views, this.unReadNotification, this.newScreenWidget});

}