
import 'package:ferme_final/ecommerce/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {

RxList<Product> cartProducts = RxList<Product>([
Product(
      id: 5,
      title: "Broccoli",
      price: "₹85.53",
      size: "1 KG",
      description: "Broccoli is a green vegetable that belongs to the cabbage family and is known for its tree-like appearance. It has a dense cluster of small, tightly   packed flower buds that are edible, as well as stalks that can also be eaten. Broccoli is a good source of vitamin C, fiber, and other nutrients.",
      image: "assets/images/vbroccoli.png",
                        color: Color(0xFFA8C762),
      type:'Vegetables'),
      Product(
      id: 6,
      title: "Cabbage",
      price: "₹24",
      size: "1 KG",
      description: "Cabbage is a leafy green or purple vegetable that is often used in salads, soups, and stews. It has a round or oval shape and a dense, tightly packed   head of leaves. Cabbage is a good source of fiber, vitamin C, and other nutrients.",
      image: "assets/images/vcabbage.png",
                        color: Color(0xFF769C37),
      type:'Vegetables'),
      Product(
      id: 3,
      title: "Onions",
      price: "₹21.50",
      size: "1 KG",
      description: "Onions are a bulbous vegetable with a pungent taste that are used in many dishes for their flavor and aroma. They come in a variety of colors, including white, yellow, and red, and can be eaten raw or cooked. Onions are a good source of vitamin C and other antioxidants.",
      image: "assets/images/vonions.png",
            color: Color(0xFF911461),
      type:'Vegetables')
]);



RxList<Product> filterProducts = RxList<Product>([...products]);


RxString selectedCategory = "Vegetables".obs;
}