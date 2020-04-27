import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpapergenerator/models/category_model.dart';
import 'package:wallpapergenerator/data/category_data.dart';
import 'package:wallpapergenerator/widgets/category_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categoryModel = [];

  getCategoryData() {
    categoryModel = getCategories();
    print(categoryModel);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Wallpaper',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Gen',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                labelText: 'Search Image',
                labelStyle: TextStyle(fontSize: 20.0),
                suffixIcon: Icon(Icons.search)),
          ),
        ),
        Container(
          height: 70.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categoryModel.length,
              itemBuilder: (context, index) {
                return CategoryList(
                  imgUrl: categoryModel[index].imageUrl,
                  categoryName: categoryModel[index].categoryName,
                );
              }),
        )
      ]),
    );
  }
}
