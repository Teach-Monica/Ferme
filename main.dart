import 'package:ferme_final/HomeScreen/Newz.dart';
import 'package:ferme_final/HomeScreen/home.dart';
import 'package:ferme_final/ecommerce/payment.dart';
import 'package:ferme_final/ecommerce/screens/home/components/cart.dart';
import 'package:ferme_final/ecommerce/screens/home/home_screen.dart';
import 'package:ferme_final/login_screen/Screens/Welcome/welcome_screen.dart';
import 'package:ferme_final/weatherapp/screens/homePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ferme_final/login_screen/constants.dart';
import 'package:get/get.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

Future<void> main() async {
  await Firebase.initializeApp(
      options: const FirebaseOptions(
           apiKey: "AIzaSyBXjmZZYSUG4aW4_a1piC7-5mNa3g9ce9U",
  authDomain: "ferme-8f809.firebaseapp.com",
  projectId: "ferme-8f809",
  storageBucket: "ferme-8f809.appspot.com",
  messagingSenderId: "650871426377",
  appId: "1:650871426377:web:d40a98a9bf1d14be369e98"));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      home: const WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            WeatherApp(),
            EComHomeScreen (),
            HomeApp()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        backgroundColor: Colors.lightGreen,
        showElevation: true,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            textAlign: TextAlign.center,
            activeColor: Colors.black,
            inactiveColor: Colors.white,
            title: Text('Weather'),
            icon: Icon(Icons.cloud_outlined)
          ),
          BottomNavyBarItem(             textAlign: TextAlign.center,
activeColor: Colors.black,
            inactiveColor: Colors.white,
            title: Text('Ecommerce'),
            icon: Icon(Icons.shopping_cart_outlined)
          ),
          BottomNavyBarItem(            textAlign: TextAlign.center,
 activeColor: Colors.black,
            inactiveColor: Colors.white,
            title: Text('Tips'),
            icon: Icon(Icons.tips_and_updates_outlined)
          ),
        ],
      ),
    );
  }
}