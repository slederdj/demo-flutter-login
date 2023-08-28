import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF131313);
const kPrimaryColor = Color.fromARGB(255, 53, 165, 156);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double defaultPadding = 16.0;
const int maxWidthMobile = 576;
const int minWidthDesktop = 992;

class ApiConstants {
  static String baseUrl = 'http://localhost:3003';
  static String usersEndpoint = '/user';
}
