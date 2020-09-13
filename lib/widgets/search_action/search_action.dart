import 'package:flutter/material.dart';

class SearchAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_list),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.orange,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              width: 1.0,
              color: Colors.orange,
            ),
          ),
          border: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              width: 1.0,
              color: Colors.orange,
            ),
          ),
          hintText: "search to add workout",
          hintStyle: TextStyle(
            color: Color(0xffD0D0D0),
          ),
        ),
      ),
    );
  }
}
