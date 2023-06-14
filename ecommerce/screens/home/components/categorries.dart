import 'package:ferme_final/ecommerce/models/Product.dart';
import 'package:ferme_final/ecommerce/screens/home/components/cartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
      final CartController controller = Get.put(CartController());
  List<String> categories = ["Vegitables", "Fruits", "Farm Products", "Daily Products"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        controller.selectedCategory.value = categories[index];
        if(categories[index] == "Vegitables")
        {
        controller.filterProducts.clear();
        controller.filterProducts.value =[...products];
        }
        else if(categories[index] == "Fruits")
        {
        controller.filterProducts.clear();
        controller.filterProducts.value =[...fruitProduct];
        }
        else if(categories[index] == "Daily Products")
        {
        controller.filterProducts.clear();
        controller.filterProducts.value =[...dairyProduct];
        }else if(categories[index] == "Farm Products")
        {
        controller.filterProducts.clear();
        controller.filterProducts.value =[...farmProducts];
        }
        else{
        controller.filterProducts.clear();
        controller.filterProducts.value =[...products];
        
        }
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
