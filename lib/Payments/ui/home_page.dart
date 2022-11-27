import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Payments> {
  late var _razorpay;
  var amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Payment Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text("Payment Method"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CupertinoButton(
                color: Colors.green,
                child: Text("Pay Amount"),
                onPressed: () {
                  ///Make payment
                  var options = {
                    'key': "rzp_test_KpYqBjIsanOlZi",
                    // amount will be multiple of 100
                    'amount': 50000, //So its pay 500
                    'name': 'Payments Method',
                    'description': 'Demo',
                    'timeout': 300, // in seconds
                    'prefill': {
                      'contact': '7704909452',
                      'email': 'skum0263@gmail.com'
                    }
                  };
                  _razorpay.open(options);
                })
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _razorpay.clear();
    super.dispose();
  }
}
