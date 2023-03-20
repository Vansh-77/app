import 'package:flutter/material.dart';

class Categorymodels {
  String name;
  String iconpath;
  Color boxcolor;

  Categorymodels(
      {required this.name, required this.iconpath, required this.boxcolor});
  static List<Categorymodels> getcategories() {
    List<Categorymodels> categories = [];

    categories.add(Categorymodels(
        name: 'Salad',
        iconpath: 'assets/icons/plate.svg',
        boxcolor: const Color(0xff92A3FD)));
    categories.add(Categorymodels(
        name: 'Cake',
        iconpath: 'assets/icons/pancakes.svg',
        boxcolor: const Color(0xffC58BF2)));
    categories.add(Categorymodels(
        name: 'Pie',
        iconpath: 'assets/icons/pie.svg',
        boxcolor: const Color(0xff92A3FD)));
    categories.add(Categorymodels(
        name: 'Smoothies',
        iconpath: 'assets/icons/orange-snacks.svg',
        boxcolor: const Color(0xffC58BF2)));
    return categories;
  }
}
