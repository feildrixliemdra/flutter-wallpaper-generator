import 'package:flutter/material.dart';
import 'package:wallpapergenerator/data/category_data.dart';

class CategoryList extends StatelessWidget {
  final String imgUrl, categoryName;

  CategoryList({this.imgUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 14.0),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
              height: 70.0,
              width: 120.0,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(5.0)),
            width: 120.0,
            height: 70.0,
            alignment: Alignment.center,
            child: Text(
              categoryName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
