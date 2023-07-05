// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_paystack/flutter_paystack.dart';

Future<String> paymentPage(BuildContext context, int amount) async {
  final plugin = PaystackPlugin();
  var publicKey = 'pk_test_acba5ab9216a5102397ad7762cbb5187f1d76d73';

  await plugin.initialize(publicKey: publicKey);

  dynamic _getReference() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  Charge charge = Charge()
    ..amount = amount // Amount in kobo
    ..email = 'codewithdripzy@gmail.com'
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
    String res = jsonEncode({
      "account": response.account,
      "card": response.card,
      "message": response.message,
      "status": response.status,
      "method": response.method,
      "reference": response.reference,
      "verify": response.verify
    });

    return res;
  } catch (e) {
    print('Payment error: $e');
    String res = jsonEncode({"status": false, "message": e});

    return res;
  }
}
