// // import 'package:flutter/material.dart';
// // import 'package:razorpay_flutter/razorpay_flutter.dart';
// // import 'package:toast/toast.dart';

// // class Payment extends StatefulWidget {
// //   @override
// //   _PaymentState createState() => _PaymentState();
// // }

// // class _PaymentState extends State<Payment> {

// //   late Razorpay razorpay;
// //   TextEditingController textEditingController = new TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();

// //     razorpay = new Razorpay();

// //     razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
// //     razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
// //     razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
// //   }

// //   @override
// //   void dispose() {
// //     // TODO: implement dispose
// //     super.dispose();
// //     razorpay.clear();
// //   }

// //   void openCheckout(){
// //     var options = {
// //       "key" : "[YOUR_API_KEY]",
// //       "amount" : num.parse(textEditingController.text)*100,
// //       "name" : "Sample App",
// //       "description" : "Payment for the some random product",
// //       "prefill" : {
// //         "contact" : "2323232323",
// //         "email" : "shdjsdh@gmail.com"
// //       },
// //       "external" : {
// //         "wallets" : ["paytm"]
// //       }
// //     };

// //     try{
// //       razorpay.open(options);

// //     }catch(e){
// //       print(e.toString());
// //     }

// //   }

// //   void handlerPaymentSuccess(){
// //     print("Pament success");
// //     Toast.show("Pament success");
// //   }

// //   void handlerErrorFailure(){
// //     print("Pament error");
// //     Toast.show("Pament error");
// //   }

// //   void handlerExternalWallet(){
// //     print("External Wallet");
// //     Toast.show("External Wallet");
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Razor Pay Tutorial"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(30.0),
// //         child: Column(
// //           children: [
// //             TextField(
// //               controller: textEditingController,
// //               decoration: InputDecoration(
// //                 hintText: "amount to pay"
// //               ),
// //             ),
// //             SizedBox(height: 12,),
// //             ElevatedButton(
// //               // color: Colors.blue,
// //               child: Text("PAy Now", style: TextStyle(
// //                 color: Colors.white
// //               ),),
// //               onPressed: (){
// //                 openCheckout();
// //               },
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:upi_payment_flutter/upi_payment_flutter.dart';


// class UpiPaymentExampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'UPI Payment Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: UpiPaymentExampleHomePage(),
//     );
//   }
// }

// class UpiPaymentExampleHomePage extends StatefulWidget {
//   @override
//   _UpiPaymentExampleHomePageState createState() =>
//       _UpiPaymentExampleHomePageState();
// }

// class _UpiPaymentExampleHomePageState extends State<UpiPaymentExampleHomePage> {
//   final upiPaymentHandler = UpiPaymentHandler();

 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('UPI Payment Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Press the button below to initiate a UPI transaction:',
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _initiateTransaction,
//         tooltip: 'Initiate Transaction',
//         child: Icon(Icons.payment),
//       ),
//     );
//   }
// }