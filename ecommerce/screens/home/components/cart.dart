import 'package:ferme_final/ecommerce/models/Product.dart';
import 'package:ferme_final/ecommerce/screens/home/components/cartController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:toast/toast.dart';
import 'package:upi_payment_flutter/upi_payment_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:razorpay_web/razorpay_web.dart';


class CartPage extends StatefulWidget {
   CartPage({
    Key? key,
  }) : super(key: key);


  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

    final CartController controller = Get.put(CartController());

  List picked = [false, false,false,false,false,false,false,true,true];
final _razorpay = Razorpay();

 @override
  void initState() {
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

 void openCheckout() async {
    var options = {
      'key': 'rzp_test_IliU4f55MXoKXL',
      'amount': totalAmount*100,
      'name': 'Ferme.',
      'description': 'Ferme Products',
      'send_sms_hash': true,
      'prefill': {'contact': '9481089140', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: $response');
    // Fluttertoast.showToast(msg: "SUCCESS: ${response.paymentId!}", toastLength: Toast.LENGTH_SHORT);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: $response');
    // Fluttertoast.showToast(msg: "ERROR: ${response.code} - ${response.message!}", toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: $response');
    // Fluttertoast.showToast(msg: "EXTERNAL_WALLET: ${response.walletName!}", toastLength: Toast.LENGTH_SHORT);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  int totalAmount = 0;

  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {
    var count = 0;
    for (int i = 0; i < picked.length; i++) {
      if (picked[i]) {
        count = count + 1;
      }
      if (i == picked.length - 1) {
        setState(() {
          totalAmount = 56 * count;
        });
      }
    }
  }
    final upiPaymentHandler = UpiPaymentHandler();


   Future<void> initiateTransaction(double amount) async {
    try {
      bool success = await upiPaymentHandler.initiateTransaction(
        payeeVpa: '9481089140@paytm',
        payeeName: 'Ferme Merchant',
        transactionRefId: 'TXN123456',
        transactionNote: 'Test transaction',
        amount: amount,
      );

      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Transaction initiated successfully!')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Transaction initiation failed.')),
        );
      }
    } on PlatformException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.message}')),
      );
    }
  }

void launchUPI() async {
  // Replace the placeholder values with the receiver's UPI ID and other information
  final String receiverUpiId = '9481089140@paytm'; // Receiver's UPI ID
  final String receiverName = "Ferme Owner";
  final String transactionId = "121212";
  final String yourRefId = "yourRefId";
  final String paymentDescription = "Ferme Products";
  final double amount = 100.00;
  final String currency = "INR";

  // Construct the UPI URL with the parameters
  final String upiUrl = "upi://pay?pa=$receiverUpiId&pn=$receiverName&mc=1234&tid=$transactionId&tr=$yourRefId&tn=$paymentDescription&am=$amount&cu=$currency";

  // Check if the URL can be launched
  if (await canLaunch(upiUrl)) {
    // Launch the UPI URL
    await launch(upiUrl);
  } else {
    // Handle error if the URL cannot be launched
    throw 'Could not launch UPI';
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Stack(children: [
            Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
              ),
              Container(
                height: 250.0,
                width: double.infinity,
                color: Color.fromARGB(255, 12, 204, 60),
              ),
              Positioned(
                bottom: 450.0,
                right: 100.0,
                child: Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.0),
                color: Color.fromARGB(255, 12, 204, 60),
                  ),
                ),
              ),
              Positioned(
                bottom: 500.0,
                left: 150.0,
                child: Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150.0),
                                        color: Color.fromARGB(255, 12, 204, 60).withOpacity(0.5))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: IconButton(
                    alignment: Alignment.topLeft,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.back();
                    }),
              ),
              Positioned(
                  top: 75.0,
                  left: 15.0,
                  child: Text(
                    'Shopping Cart',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 150.0,
        //         child: ListView.builder(
        //           shrinkWrap: true,
        //   scrollDirection: Axis.horizontal,
        //   itemCount: controller.cartProducts.length,
        //   itemBuilder: (context, index) => itemCard(controller.cartProducts[index].title,controller.cartProducts[index].size,controller.cartProducts[index].price,controller.cartProducts[index].price,controller.cartProducts[index].price,controller.cartProducts[index].image),
        // ),
                child: Column(
                  children: <Widget>[

                    Container(
                      height: MediaQuery.of(context).size.height*.6,
                      child: SingleChildScrollView(
                        child: Column(
                                      children: List.generate(controller.cartProducts.length, (index) {
                                        var product = controller.cartProducts[index];
                                        
                                        return itemCard(
                        product.title,
                        product.size,
                        product.price,
                        product.image,
                        true,
                        index,
                                        );
                                      }),
                                      ),
                      ),
                    ),
                      // itemCard(controller.cartProducts[2].title, controller.cartProducts[2].size, controller.cartProducts[2].price,
                      //   controller.cartProducts[2].image, true, 2),
                        InkWell(
                          onTap: openCheckout,
                          child: Container(
                            color: Colors.green,
                            height: 40,
                            width: 120,
                             child: Center(child: Text("Pay Now"))),
                        )
                  ],
                
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 600.0, bottom: 15.0),
                  child: Container(
                      height: 50.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Total:' + totalAmount.toString()),
                          SizedBox(width: 10.0),
                         
                        ],
                      )))
            ])
          ])
        ])
      ]),
    );
  }

  Widget itemCard(itemName, color, price, imgPath, available, i) {
    return InkWell(
      onTap: () {
        if (available) {
          pickToggle(i);
        }
      },
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                  padding: EdgeInsets.only(left: 15.0, right: 10.0),
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: 25.0,
                              width: 25.0,
                              decoration: BoxDecoration(
                                color: available
                                    ? Colors.grey.withOpacity(0.4)
                                    : Colors.red.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.5),
                              ),
                              child: Center(
                                  child: available
                                      ? Container(
                                          height: 12.0,
                                          width: 12.0,
                                          decoration: BoxDecoration(
                                              color: picked[i]
                                                  ? Colors.yellow
                                                  : Colors.grey
                                                      .withOpacity(0.4),
                                              borderRadius:
                                                  BorderRadius.circular(6.0)),
                                        )
                                      : Container()))
                        ],
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        height: 150.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(width: 4.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                itemName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              SizedBox(width: 7.0),
                              available
                                  ? picked[i]
                                      ? Text(
                                          'x1',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0,
                                              color: Colors.grey),
                                        )
                                      : Container()
                                  : Container()
                            ],
                          ),
                          SizedBox(height: 7.0),
                          // available
                          //     ? Text(
                          //         'Color: ' + color,
                          //         style: TextStyle(
                          //             fontFamily: 'Quicksand',
                          //             fontWeight: FontWeight.bold,
                          //             fontSize: 14.0,
                          //             color: Colors.grey),
                          //       )
                          //     : ElevatedButton(
                          //         onPressed: () {},
                          //         // borderSide: BorderSide(
                          //             // color: Colors.red,
                          //             // width: 1.0,
                          //             // style: BorderStyle.solid),
                          //         child: Center(
                          //           child: Text('Find Similar',
                          //               style: TextStyle(
                          //                   fontFamily: 'Quicksand',
                          //                   fontWeight: FontWeight.bold,
                          //                   fontSize: 12.0,
                          //                   color: Colors.red)),
                          //         ),
                          //       ),
                          SizedBox(height: 7.0),
                          available
                              ? Text(
                                  '' + price,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Color(0xFFFDD34A)),
                                )
                              : Container(),
                        ],
                      )
                    ],
                  )))),
    );
  }
}