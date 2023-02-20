import 'package:fixshop/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void NavigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

Widget Textfieldup({
  required TextEditingController myTimeController,
  required BuildContext context,
  required IconData myicon,
  required VoidCallback ontap,
  required TextInputType keyboardtype,
  required String Lable,
  required FormFieldValidator<String> validator,
}) {
  return TextFormField(
    validator: validator,
    cursorColor: primaypcolor,
    decoration: InputDecoration(
      filled: true,
      fillColor: backgroung,
      focusColor: primaypcolor,
      prefixIcon: Icon(
        myicon,
        color: primaypcolor,
      ),
      label: Text(Lable,
          style: TextStyle(
              fontSize: 15.sp,
              color: primaypcolor,
              fontWeight: FontWeight.bold)),
      floatingLabelStyle: TextStyle(fontSize: 20.sp),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textcolor, width: 3.w)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaypcolor, width: 2.w),
          borderRadius: BorderRadius.circular(20).w),
    ),
    controller: myTimeController,
    keyboardType: keyboardtype,
    onTap: ontap,
  );
}
