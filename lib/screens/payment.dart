import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.cancel_presentation,
          size: 35,
          color: Colors.deepOrange,
        ),
        title: Text("Payment Methods",
            style: GoogleFonts.secularOne(color: Colors.deepOrange)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: h * .2,
              width: w * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepOrange[200],
              ),
              child: Image.asset("assets/images/payment.png"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black38)),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Add Payment Method", 
                style: GoogleFonts.libreBaskerville(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ))),
          ),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.account_balance_sharp,
              size: 28,
              color: Colors.deepOrange,
            ),
            SizedBox(
              width: 15,
            ),
            Text("Add Netbanking", style: GoogleFonts.libreBaskerville(
              fontSize: 19,
            ),),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.credit_card_outlined,
                size: 28,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 15,
              ),
              Text("Add Credit or Debit Card", style: GoogleFonts.libreBaskerville(
                fontSize: 19,
              ),),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.settings_input_antenna,
                size: 28,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 15,
              ),
              Text("Use Airtel billing", style: GoogleFonts.libreBaskerville(
                fontSize: 19,
              ),),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.account_balance_wallet,
                size: 28,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 15,
              ),
              Text("Add bank account with BHIM UPI ID", style: GoogleFonts.libreBaskerville(
                fontSize: 19,
              ),),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.redeem_rounded,
                size: 28,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 15,
              ),
              Text("Redeem Code", style: GoogleFonts.libreBaskerville(
                fontSize: 19,
              ),),
            ]),
          ),
        ],
      ),
    );
  }
}
