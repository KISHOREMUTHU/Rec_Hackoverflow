import 'package:flutter/material.dart';

import '../screens/news_page.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel = CategoryModel();

  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.imageUrl = 'assets/health.jpg';
  // ignore: prefer_const_constructors
  categoryModel.nav = HealthNewsPage();
  category.add(categoryModel);

  return category;
}

class CategoryModel {
  String? categoryName;
  String? imageUrl;
  Widget? nav;
}
