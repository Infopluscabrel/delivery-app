import 'package:flutter/material.dart';
import 'package:egg_delivery_app/const/colors.dart';
import 'package:egg_delivery_app/utils/helper.dart';

class SearchBar extends StatelessWidget {
  final String title;
  SearchBar({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: AppColor.placeholderBg,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset(
              Helper.getAssetName("search_filled.png", "virtual"),
            ),
            hintText: title,
            hintStyle: TextStyle(
              color: AppColor.placeholder,
              fontSize: 18,
            ),
            contentPadding: const EdgeInsets.only(
              top: 17,
            ),
          ),
        ),
      ),
    );
  }
}
