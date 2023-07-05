import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Quickteller Group Code

class QuicktellerGroup {
  static String baseUrl = 'https://payment-service.k8.isw.la/api/v3/purchases';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOlsiaXN3LWNvbGxlY3Rpb25zIiwiaXN3LXBheW1lbnRnYXRld2F5IiwicGFzc3BvcnQiLCJwcm9qZWN0LXgtbWVyY2hhbnQiLCJ2YXVsdCJdLCJtZXJjaGFudF9jb2RlIjoiTVg2MDcyIiwicmVxdWVzdG9yX2lkIjoiMTIzODA4NTk1MDMiLCJzY29wZSI6WyJwcm9maWxlIl0sImp0aSI6IjVkOTczM2Y5LWMzNDEtNGFjZC04ZjE3LWViYzUyYWE0NjM2MiIsInBheWFibGVfaWQiOiIzMzU5NyIsImNsaWVudF9pZCI6IklLSUFCMjNBNEUyNzU2NjA1QzFBQkMzM0NFM0MyODdFMjcyNjdGNjYwRDYxIn0.ElgBX2KoF9LuUUpeBGzzp8CDAllTHWfgM6pJRgTtPYGJpoZufKlJrmE4QTvZV6MIVaNtK21majTgR4qXJr7CEkPK_4zCIHyN2b8a445vqhLYcbffQvK4EeUn_RzsWTmub2bruG5s4bRS1il5itPR0QQ-trEsbELU7TAHvC4p786RiAQd-K_I0bwtLzIXQN65jlw3eJxxK-BGfca-OMTUo9HGvraebfLB-7h4-vNbPred58gfLBSwK31jaLP19cMRc5Jea28jrlmGNUhHGzjnP7ZanqgC9uuvoepQsa39_DNBonR6xirxKw4aNlNLcKOTn026wyOTHIHUGlDQ3s3AOQ',
  };
}

/// End Quickteller Group Code

/// Start Orchestrate Group Code

class OrchestrateGroup {
  static String baseUrl = 'https://api.orchestrate.finance/v1/checkout/new';
  static Map<String, String> headers = {
    'Authorization': 'Bearer <YOUR-PUBLIC-KEY>',
  };
}

/// End Orchestrate Group Code

class PaywithcardCall {
  static Future<ApiCallResponse> call({
    int? amount,
    int? cardNumber,
    int? cvv,
    int? expiryMonth,
    int? expiryYear,
    String? email = '',
    String? txRef = '',
    String? currency = '',
    String? phoneNumber = '',
    String? fullname = '',
  }) {
    final body = '''
{
  "card_number": ${cardNumber},
  "cvv": ${cvv},
  "expiry_month": ${expiryMonth},
  "expiry_year": ${expiryYear},
  "currency": "${currency}",
  "amount": ${amount},
  "fullname": "${fullname}",
  "email": "${email}",
  "tx_ref": "${txRef}",
  "redirect_url": "https://www,flutterwave.ng"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Paywithcard',
      apiUrl: 'https://api.flutterwave.com/v3/charges?type=card',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer FLWSECK_TEST-bc60be4cd9d26b8219c634d08092dff0-X',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FlutterwaveCheckoutCall {
  static Future<ApiCallResponse> call({
    int? amount,
    int? cardNumber,
    int? cvv,
    int? expiryMonth,
    int? expiryYear,
    String? email = '',
    String? txRef = '',
    String? currency = '',
    String? phoneNumber = '',
    String? fullname = '',
  }) {
    final body = '''
{
  "tx_ref": "${txRef}",
  "amount": ${amount},
  "currency": "${currency}",
  "redirect_url": "thirsty://payment/Success",
  "meta": {
    "consumer_id": 23,
    "consumer_mac": "92a3-912ba-1192a"
  },
  "customer": {
    "email": "${email}",
    "phonenumber ": "${phoneNumber}",
    "name": "${fullname}"
  },
  "customizations ": {
    "title": "Pied Piper Payments",
    "logo": "http://www.piedpiper.com/app/themes/joystick-v27/images/logo.png"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Flutterwave Checkout',
      apiUrl: 'https://api.flutterwave.com/v3/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer FLWSECK_TEST-b0dda3e0e395079ea1d05aa53f0678a5-X',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.data.link''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$..data.id''',
      );
}

class FlutterwaveWebhookCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'flutterwave webhook',
      apiUrl: 'https://webhook.site/a4cb064a-9d97-4c80-bc69-6a3e3374c0f2',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'FLWSECK_TEST-b0dda3e0e395079ea1d05aa53f0678a5-X',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.data.link''',
      );
}

class FlutterwaveverifyTransationStatusCopyCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'flutterwaveverify transation status Copy',
      apiUrl: 'https://api.flutterwave.com/v3/transactions/${id}/verify',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'FLWSECK_TEST-b0dda3e0e395079ea1d05aa53f0678a5-X',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.data.link''',
      );
}

class PaystackCall {
  static Future<ApiCallResponse> call({
    String? paystackPublicKey =
        'pk_test_81f808497e44601b27846c7f7851ba60f1e71ab7',
    String? paystackSecretKey =
        'sk_test_18c48b5d62c6c32341b4e98376537da7ef30d385',
    dynamic? metadataJson,
    dynamic? billingInfoJson,
  }) {
    final metadata = _serializeJson(metadataJson);
    final billingInfo = _serializeJson(billingInfoJson);
    final body = '''
{
  "email": "charles.ejiegbu@gmail.com",
  "amount": 43000
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paystack',
      apiUrl: 'https://api.paystack.co/transaction/initialize',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_efd8b7a09183b6eb0786ebd712f3324ee339eeca',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.data.authorization_url''',
      );
}

class CardPaymentAPICall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? amount = '',
    String? transactionRef = '',
    String? currency = '',
  }) {
    final body = '''
{
    "customerId":"${customerId}",
    "amount": "${amount}",
    "transactionRef": "${transactionRef}",
    "currency": "${currency}",
    "authData": "G3cf/VTtAHCdHZNxc5GXWRI8z5P0goL2amXWDVFgb6D3XK/QMtZW90TYdl5zffDCNpiZThJzk0+eEU/Y/aYS6fyIOpQZGFrOr8hmvx5869sl2kr5u8qjnM7q5b4ZnTqdKDLtNxr3Qr7anj6YLpox1FOsiyT26mktXL+7SFOaZ15NMtne1z4xrj4R2SndowI/Znsapo7Gfzvp+L7XJyQ8kLYYRk3INjvmRPPQoJg1R0Nnh6EQE3ldIdwylB7GKtr6a71N/yCd4ZtyIcqq1ZNzdWcZyy5eEBAlDIxuECdBqH6hRq2/RbkfARqidNN4Kq0WviSRaRYGbiNjl2W9pNcM8g=="
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Card Payment API',
      apiUrl: 'https://payment-service.k8.isw.la/api/v3/purchases',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOlsiaXN3LWNvbGxlY3Rpb25zIiwiaXN3LXBheW1lbnRnYXRld2F5IiwicGFzc3BvcnQiLCJwcm9qZWN0LXgtbWVyY2hhbnQiLCJ2YXVsdCJdLCJtZXJjaGFudF9jb2RlIjoiTVg2MDcyIiwicmVxdWVzdG9yX2lkIjoiMTIzODA4NTk1MDMiLCJzY29wZSI6WyJwcm9maWxlIl0sImp0aSI6IjVkOTczM2Y5LWMzNDEtNGFjZC04ZjE3LWViYzUyYWE0NjM2MiIsInBheWFibGVfaWQiOiIzMzU5NyIsImNsaWVudF9pZCI6IklLSUFCMjNBNEUyNzU2NjA1QzFBQkMzM0NFM0MyODdFMjcyNjdGNjYwRDYxIn0.ElgBX2KoF9LuUUpeBGzzp8CDAllTHWfgM6pJRgTtPYGJpoZufKlJrmE4QTvZV6MIVaNtK21majTgR4qXJr7CEkPK_4zCIHyN2b8a445vqhLYcbffQvK4EeUn_RzsWTmub2bruG5s4bRS1il5itPR0QQ-trEsbELU7TAHvC4p786RiAQd-K_I0bwtLzIXQN65jlw3eJxxK-BGfca-OMTUo9HGvraebfLB-7h4-vNbPred58gfLBSwK31jaLP19cMRc5Jea28jrlmGNUhHGzjnP7ZanqgC9uuvoepQsa39_DNBonR6xirxKw4aNlNLcKOTn026wyOTHIHUGlDQ3s3AOQ',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  static dynamic transactionRef(dynamic response) => getJsonField(
        response,
        r'''$.transactionRef''',
      );
  static dynamic panlast4Digits(dynamic response) => getJsonField(
        response,
        r'''$.panLast4Digits''',
      );
  static dynamic transactionidentifier(dynamic response) => getJsonField(
        response,
        r'''$.transactionIdentifier''',
      );
  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.amount''',
      );
  static dynamic cardType(dynamic response) => getJsonField(
        response,
        r'''$.cardType''',
      );
  static dynamic tokenExpiryDate(dynamic response) => getJsonField(
        response,
        r'''$.tokenExpiryDate''',
      );
}

class AuthenticatePaymentCall {
  static Future<ApiCallResponse> call({
    String? paymentId = '',
    String? otp = '',
  }) {
    final body = '''
{
     "paymentId":"${paymentId}",
     "otp": "${otp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Authenticate Payment',
      apiUrl: 'https://payment-service.k8.isw.la/api/v3/purchases/otps/auths',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOlsiaXN3LWNvbGxlY3Rpb25zIiwiaXN3LXBheW1lbnRnYXRld2F5IiwicGFzc3BvcnQiLCJwcm9qZWN0LXgtbWVyY2hhbnQiLCJ2YXVsdCJdLCJtZXJjaGFudF9jb2RlIjoiTVg2MDcyIiwicmVxdWVzdG9yX2lkIjoiMTIzODA4NTk1MDMiLCJzY29wZSI6WyJwcm9maWxlIl0sImp0aSI6IjVkOTczM2Y5LWMzNDEtNGFjZC04ZjE3LWViYzUyYWE0NjM2MiIsInBheWFibGVfaWQiOiIzMzU5NyIsImNsaWVudF9pZCI6IklLSUFCMjNBNEUyNzU2NjA1QzFBQkMzM0NFM0MyODdFMjcyNjdGNjYwRDYxIn0.ElgBX2KoF9LuUUpeBGzzp8CDAllTHWfgM6pJRgTtPYGJpoZufKlJrmE4QTvZV6MIVaNtK21majTgR4qXJr7CEkPK_4zCIHyN2b8a445vqhLYcbffQvK4EeUn_RzsWTmub2bruG5s4bRS1il5itPR0QQ-trEsbELU7TAHvC4p786RiAQd-K_I0bwtLzIXQN65jlw3eJxxK-BGfca-OMTUo9HGvraebfLB-7h4-vNbPred58gfLBSwK31jaLP19cMRc5Jea28jrlmGNUhHGzjnP7ZanqgC9uuvoepQsa39_DNBonR6xirxKw4aNlNLcKOTn026wyOTHIHUGlDQ3s3AOQ',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ResendOTPCall {
  static Future<ApiCallResponse> call({
    String? paymentId = '',
    String? otp = '',
    String? currency = '',
  }) {
    final body = '''
{
     "paymentId":"${paymentId}",
     "otp": "${otp}" ,
     "currency":"${currency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Resend OTP',
      apiUrl: 'https://payment-service.k8.isw.la/api/v3/purchases/otps/auths',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOlsiaXN3LWNvbGxlY3Rpb25zIiwiaXN3LXBheW1lbnRnYXRld2F5IiwicGFzc3BvcnQiLCJwcm9qZWN0LXgtbWVyY2hhbnQiLCJ2YXVsdCJdLCJtZXJjaGFudF9jb2RlIjoiTVg2MDcyIiwicmVxdWVzdG9yX2lkIjoiMTIzODA4NTk1MDMiLCJzY29wZSI6WyJwcm9maWxlIl0sImp0aSI6IjVkOTczM2Y5LWMzNDEtNGFjZC04ZjE3LWViYzUyYWE0NjM2MiIsInBheWFibGVfaWQiOiIzMzU5NyIsImNsaWVudF9pZCI6IklLSUFCMjNBNEUyNzU2NjA1QzFBQkMzM0NFM0MyODdFMjcyNjdGNjYwRDYxIn0.ElgBX2KoF9LuUUpeBGzzp8CDAllTHWfgM6pJRgTtPYGJpoZufKlJrmE4QTvZV6MIVaNtK21majTgR4qXJr7CEkPK_4zCIHyN2b8a445vqhLYcbffQvK4EeUn_RzsWTmub2bruG5s4bRS1il5itPR0QQ-trEsbELU7TAHvC4p786RiAQd-K_I0bwtLzIXQN65jlw3eJxxK-BGfca-OMTUo9HGvraebfLB-7h4-vNbPred58gfLBSwK31jaLP19cMRc5Jea28jrlmGNUhHGzjnP7ZanqgC9uuvoepQsa39_DNBonR6xirxKw4aNlNLcKOTn026wyOTHIHUGlDQ3s3AOQ',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GenerateAccessTokenCall {
  static Future<ApiCallResponse> call({
    String? grantType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Generate Access Token',
      apiUrl: 'https://apps.qa.interswitchng.com/passport/oauth/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization':
            'BasicIKIA8D90F3DD9FDA075C88F54368E57E122230953668:9B030091A84748E9FB93BA4BFBC47924669D7056',
      },
      params: {
        'grant_type': grantType,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WebCheckoutCall {
  static Future<ApiCallResponse> call({
    String? merchantCode = '',
    String? payItemId = '',
    String? siteRedirectUrl = '',
    String? txnRef = '',
    String? amount = '',
    String? currency = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Web Checkout',
      apiUrl: 'https://webpay-ui.k8.isw.la/collections/w/pay',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'merchant_code': merchantCode,
        'pay_item_id': payItemId,
        'site_redirect_url': siteRedirectUrl,
        'txn_ref': txnRef,
        'amount': amount,
        'currency': currency,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class OrchestrateCardPaymentCall {
  static Future<ApiCallResponse> call({
    String? customerEmail = '',
    String? customerName = '',
    String? country = '',
    int? amount,
    String? references = '',
  }) {
    final body = '''
{
  "customer_email": "${customerEmail}",
  "customer_name": "${customerName}",
  "country": "${country}",
  "amount": ${amount},
  "reference": "${references}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Orchestrate  Card Payment',
      apiUrl: 'https://api.orchestrate.finance/v1/checkout/new',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer <YOUR-PUBLIC-KEY>',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class OPayCall {
  static Future<ApiCallResponse> call({
    String? references = '',
    String? mchShortName = '',
    String? productName = '',
    String? productDesc = '',
    String? userPhone = '',
    String? userRequestIp = '',
    int? amount,
    String? currency = '',
    String? payTypes = '',
    String? paymethods = '',
  }) {
    final body = '''
{
  "reference": "${references}",
  "mchShortName": "${mchShortName}",
  "productName": "${productName}",
  "productDesc": "${productDesc}",
  "userPhone": "${userPhone}",
  "userRequestIp": "123.123.123.123",
  "amount": ${amount},
  "currency": "${currency}",
  "payTypes": "${payTypes}",
  "payMethods": "${paymethods}",
  "callbackUrl": "https://you.domain.com/callbackUrl",
  "returnUrl": "https://you.domain.com/returnUrl",
  "expireAt": "10"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'oPay',
      apiUrl: 'http://sandbox-cashierapi.opayweb.com/api/v3/cashier/initialize',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'OPAYPUB16662826549110.6576662427193951',
        'MerchantID': '256622102069350',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InterswitchCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "customerId": "1407002510",
  "amount": "200",
  "transactionRef": "ESBDEV10002",
  "currency": "NGN",
  "authData": "Lisy0gf1qwSgAOR4xNS5jkiLFSh0C6dYqyzQhxopAVHaG0DqTaB8yHYGPfYBAg2ZShyGp2YJRzLsxpquvRuUZe6IO7h"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Interswitch',
      apiUrl: 'https://sandbox.interswitchng.com/api/v3/purchases',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Base64(IKIAD0DC999E6F702838A7B32A98B4CA7562538F3E73:6EE9331731862B5AD54F8BBD23D4AAB5133E3B83)',
        'SignatureMethod': 'SHA-256',
        'Signature': '2cFwCfkgRR7mlIOlcjTQXCUYpLmtlKJkCb8RUzIX0-k=',
        'Nonce': '634968823463411609',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WebhhookCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'webhhook',
      apiUrl: 'https://webhook.site/a4cb064a-9d97-4c80-bc69-6a3e3374c0f2',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VerifyPAystackPaymentCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Verify PAystack payment',
      apiUrl: 'https://api.paystack.co/transaction/verify/:reference',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'sk_live_1ca6be9efdbd0b99d369f1d701c0f4953ec7c79a',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
