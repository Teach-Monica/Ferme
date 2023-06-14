// import 'package:ajfereme/components/coustom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                                                                      FontAwesomeIcons.noteSticky,
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
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Text("Learn From Us For Maximum Productivity",style: TextStyle(
                      color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
                    ),textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard10(),
                        _getAvatar10(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard11(),
                        _getAvatar11(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard9(),
                        _getAvatar9(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard8(),
                        _getAvatar8(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard7(),
                        _getAvatar7(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard6(),
                        _getAvatar6(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard5(),
                        _getAvatar5(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard4(),
                        _getAvatar4(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard3(),
                        _getAvatar3(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard(),
                        _getAvatar(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard2(),
                        _getAvatar2(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children:[
                        _getCard1(),
                        _getAvatar1(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
  Container _getCard() {
    return Container(
      width: 450,
      height: 150.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all( color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child: SizedBox(width: 200,child:Text("Potatoes are best grown in Rows.Plant at a distance of 15inches, Plant 4 inch below the soil."),
              ),
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
launchURL(
                  "https://www.agrifarming.in/potato-farming#:~:text=Plant%20seed%20potatoes%20one%20foot,rows%20spaced%203%20feet%20apart.");
                             } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  Container _getAvatar() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/bagofpotatoes.png"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //Riceeeeeeeeeeeeeeee

  Container _getCard1() {
    return Container(
      width: 450,
      height: 180.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color:Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child: SizedBox(width: 200,child: Text("Plant the rice seeds throughout the soil, during the fall or spring season. Get rid of the weeds, till the beds, and level the soil.")),
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURLrice();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURLrice() async =>
      await canLaunch("https://www.agrifarming.in/rice-cultivation-information-guide#:~:text=Rice%20can%20be%20cultivated%20as,and%20prolonged%20sunshine%20is%20available.") ? await launch("https://www.agrifarming.in/rice-cultivation-information-guide#:~:text=Rice%20can%20be%20cultivated%20as,and%20prolonged%20sunshine%20is%20available.") : throw 'Could not launch https://www.agrifarming.in/rice-cultivation-information-guide#:~:text=Rice%20can%20be%20cultivated%20as,and%20prolonged%20sunshine%20is%20available.';

  Container _getAvatar1() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/Rice.jpg"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //wheattttttt

  Container _getCard2() {
    return Container(
      width: 450,
      height: 150.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("Wheat needs a good root system and the beginnings of shoots before cold weather sets in."),),
      
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL2();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURL2() async =>
      await canLaunch("https://www.agriculture.com/crops/wheat/farming-101-planting-wheat") ? await launch("https://www.agriculture.com/crops/wheat/farming-101-planting-wheat") : throw 'Could not launch ';


  Container _getAvatar2() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade400,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/wheat.jpg"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //Appleeeeeeeeeeeeee

  Container _getCard3() {
    return Container(
      width: 450,
      height: 150.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("Apples grow best on a well-drained, loam soils having a depth of 45 cm and a pH range of pH 5.5-6.5."),),
      
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL3();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURL3() async =>
      await canLaunch("https://vikaspedia.in/agriculture/crop-production/package-of-practices/fruits-1/apple-1/apple#:~:text=Apples%20grow%20best%20on%20a,subsoil%20are%20to%20be%20avoided.") ? await launch("https://vikaspedia.in/agriculture/crop-production/package-of-practices/fruits-1/apple-1/apple#:~:text=Apples%20grow%20best%20on%20a,subsoil%20are%20to%20be%20avoided.") : throw 'Could not launch https://vikaspedia.in/agriculture/crop-production/package-of-practices/fruits-1/apple-1/apple#:~:text=Apples%20grow%20best%20on%20a,subsoil%20are%20to%20be%20avoided.';


  Container _getAvatar3() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/apple.jpg"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }


  //Strawberrryyyyyyyyy

  Container _getCard4() {
    return Container(
      width: 450,
      height: 190.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("Give strawberries room for runners by planting them 18 inches apart. Strawberries can be grown in a variety of ways, but make sure they get 8 or more hours of sun."),),
      
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL4();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURL4() async =>
      await canLaunch("https://bonnieplants.com/how-to-grow/growing-strawberries/") ? await launch("https://bonnieplants.com/how-to-grow/growing-strawberries/") : throw 'Could not launch ';


  Container _getAvatar4() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/strawbery.jfif"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //Mangooooooooooooooo

  Container _getCard5() {
    return Container(
      width: 450,
      height: 180.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("Mango farm should be irrigated at an interval of two to three days, in the first year of your mango farming business."),),
      
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL5();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURL5() async =>
      await canLaunch("https://krishijagran.com/agripedia/advanced-profitable-mango-farming-techniques-best-climate-soil-land-for-mango-farming-how-to-grow-mango-tree/") ? await launch("https://krishijagran.com/agripedia/advanced-profitable-mango-farming-techniques-best-climate-soil-land-for-mango-farming-how-to-grow-mango-tree/") : throw 'Could not launch ';


  Container _getAvatar5() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/mango.jpg"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //Brocoliiiii

  Container _getCard6() {
    return Container(
      width: 450,
      height: 180.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("To get a better yield from the Broccoli crop, sandy and silt loam soils are most preferred. The soil PH should be between  5.5 pH – 6.5 pH."),),
      
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL6();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURL6() async =>
      await canLaunch("https://agricultureguruji.com/broccoli-farming/#:~:text=To%20get%20a%20better%20yield,the%20time%20of%20land%20preparation.") ? await launch("https://agricultureguruji.com/broccoli-farming/#:~:text=To%20get%20a%20better%20yield,the%20time%20of%20land%20preparation.") : throw 'Could not launch ';


  Container _getAvatar6() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/brocoli.jfif"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //carotttttttttttt

  Container _getCard7() {
    return Container(
      width: 450,
      height: 150.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("commercial carrot farming’s ideal soil should be deep, loose, well-drained, and rich in humus."),),
      
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL7();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURL7() async =>
      await canLaunch("https://agricultureguruji.com/carrot-farming/#Soil_requirement_for_Carrot_farming") ? await launch("https://agricultureguruji.com/carrot-farming/#Soil_requirement_for_Carrot_farming") : throw 'Could not launch ';


  Container _getAvatar7() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/carrot.jpg"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //coconuttttttttttttttt

  Container _getCard8() {
    return Container(
      width: 450,
      height: 220.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("The coconut palm grows well in a equatorial climate. The long spells of hot and dry weather, severe winters and extremes of temperatures are not favourable for coconut growing."),),
      
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL8();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }
  void _launchURL8() async =>
      await canLaunch("https://www.agrifarming.in/coconut-farming#:~:text=Coconut%20Plantation.,and%20fill%20up%20with%20soil.") ? await launch("https://www.agrifarming.in/coconut-farming#:~:text=Coconut%20Plantation.,and%20fill%20up%20with%20soil.") : throw 'Could not launch ';


  Container _getAvatar8() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/coconut.jpg"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  //green
  Container _getCard9() {
    return Container(
      width: 450,
      height: 180.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("To get a better yield from the Broccoli crop, sandy and silt loam soils are most preferred. The soil PH should be between  5.5 pH – 6.5 pH."),),
      
            ),
             SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL6();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }

  Container _getAvatar9() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/brocoli.jfif"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }
//  LightGreen
  Container _getCard11() {
    return Container(
      width: 450,
      height: 150.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                            padding: const EdgeInsets.only(right:8.0,bottom: 9),

              child:SizedBox(width: 200,child: Text("Apples grow best on a well-drained, loam soils having a depth of 45 cm and a pH range of pH 5.5-6.5."),),
      
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
               _launchURL3();
                 } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }


  Container _getAvatar11() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/apple.jpg"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );
  }

  Container _getCard10() {
    return Container(
      width: 450,
      height: 150.0,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade500,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all( color: Colors.lightGreen.shade500, width: 5.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:8.0,bottom: 9),
              child: SizedBox(width: 200,child:Text("Potatoes are best grown in Rows.Plant at a distance of 15inches, Plant 4 inch below the soil."),
              ),
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: ElevatedButton(onPressed:() {
                launchURL(
                    "https://www.agrifarming.in/potato-farming#:~:text=Plant%20seed%20potatoes%20one%20foot,rows%20spaced%203%20feet%20apart.");
              } ,  style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text Color (Foreground color)
              ),
                
                child: Text("More Details"),
              ),
            ),
          ],
      
        ),
      ),
    );
  }

  Container _getAvatar10() {
    return Container(
      child:
      Padding(
        padding: const EdgeInsets.only(left:28.0),
        child:  Container(
          width: 100,
          height: 100.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3.2),

            image: DecorationImage(image:AssetImage("assets/images/bagofpotatoes.png"),
                fit:BoxFit.cover
            ),
          ),

        ),
      ),
    );

  }
}
