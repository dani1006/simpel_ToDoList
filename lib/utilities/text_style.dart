import 'package:flutter/cupertino.dart';

FontWeight bold = FontWeight.w700;
FontWeight semiBold = FontWeight.w600;
FontWeight medium = FontWeight.w500;
FontWeight regular = FontWeight.w400;

TextStyle heading1(colorText){
  return TextStyle(color: colorText, fontSize: 24,fontWeight: bold);
}
TextStyle heading2(colorText){
  return TextStyle(color: colorText, fontSize: 20,fontWeight: bold);
}
TextStyle heading3(colorText){
  return TextStyle(color: colorText, fontSize: 16,fontWeight: semiBold);
}
TextStyle text1(colorText){
  return TextStyle(color: colorText, fontSize: 12,fontWeight: regular);
}
TextStyle text2(colorText){
  return TextStyle(color: colorText, fontSize: 14,fontWeight: semiBold);
}
TextStyle text3(colorText){
  return TextStyle(color: colorText, fontSize: 14,fontWeight: regular);
}
TextStyle text4(colorText){
  return TextStyle(color: colorText, fontSize: 12,fontWeight: medium);
}