import 'package:ferme_final/ecommerce/screens/home/components/cart.dart';
import 'package:ferme_final/ecommerce/screens/home/components/cartController.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../ecommerce/constants.dart';
import '../../../../ecommerce/models/Product.dart';
import '../../../../ecommerce/screens/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
      final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {

            Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
                          color: Colors.lightGreen,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.02,
                              horizontal: size.width * 0.05,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Align(
                                  child: Row(
                                    children: [
                                      
                                      Text(
                                        'Ferme',
                                        style: GoogleFonts.questrial(
                                          color: Colors.black,
                                          fontSize: size.height * 0.04,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),Padding(
                                        padding: const EdgeInsets.only(left:8.0),
                                        child: FaIcon(
                                                                      FontAwesomeIcons.cartShopping,
                                                                      color: Colors.black,
                                                                    ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox()
                              ],
                            ),
                          ),
                        ),
                           Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.02,
                              horizontal: size.width * 0.02,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FaIcon(FontAwesomeIcons.searchengin),
                                SizedBox(width: 8,),
                                
                                                                InkWell(
                                                                  onTap: (){
                                                                    
            Get.to(CartPage());
                                                                  },
                                                                  child: FaIcon(FontAwesomeIcons.cartShopping)),

                                
                              ],
                            ),
                          ),
                        ),
       
        Categories(),
        Expanded(
          child: Obx( () {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                    itemCount: controller.filterProducts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                          product: controller.filterProducts[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: controller.filterProducts[index],
                                ),
                              )),
                        )),
              );
            }
          ),
        ),
      ],
    );
  }
}
