// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:flutter_paystack/flutter_paystack.dart';

Future<dynamic> paymentPage(
    BuildContext context, int? amount, String emailAddress) async {
  final plugin = PaystackPlugin();
  var publicKey = 'pk_test_acba5ab9216a5102397ad7762cbb5187f1d76d73';

  await plugin.initialize(publicKey: publicKey);

  dynamic _getReference() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  Charge charge = Charge()
    ..amount = amount ?? 100000 // Amount in kobo
    ..email = emailAddress
    ..reference = _getReference();

  try {
    CheckoutResponse response = await plugin.checkout(
      context,
      method: CheckoutMethod.card, // You can change the payment method here
      charge: charge,
      fullscreen: false,
      logo: Image.network(
          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/thirsty-xm9o5s/assets/3ef0znmtm7ka/App%20Icon%20-%20iOS%20(Masked).png',
          width: 50.0),
    );

    Map<String, dynamic> res = {
      "message": response.message,
      "status": response.status,
      "verify": response.verify
    };

    print("Success!!!");

    return res;
  } catch (e) {
    Map<String, dynamic> res = {
      "status": false,
      "message": "Something Went wrong !"
    };

    print(e);

    return res;
  }
}
