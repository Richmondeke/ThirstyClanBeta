import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String numLovesStr(SocialPostsRecord? post) {
  final numLikes = math.max(post!.numLikes, 0);
  // return '$numLikes love' + $numLikes == 1 ? ''; : 's';
  return "";
}

String numCommentsStr(SocialPostsRecord? post) {
  final numComments = math.max(post!.numComments!, 0);
  return '$numComments comment${numComments == 1 ? '' : 's'}';
}

String numCommentsStrCopy(SocialPostsRecord? post) {
  final numComments = math.max(post!.numComments!, 0);
  return '$numComments comment${numComments == 1 ? '' : 's'}';
}

int cartTotal(List<int> list) {
  // Add your function code here!
  int sum = 0;
  list.forEach((int e) {
    sum += e;
  });
  return sum;
}

int cartTotall(List<int> amount) {
  // find the sum total of amount
  var totalAmount = 0;
  for (var i = 0; i < amount.length; i++) {
    totalAmount += amount[i];
  }
  return totalAmount;
}

int cartTotalCopy(List<int> list) {
  // find sum of list
  int total = 0;
  for (int item in list) {
    total += item;
  }
  return total;
}

double? multiply(
  double optionA,
  int optionB,
) {
  // write code that multiplies a double (A) by an integer(B) and returns a double to two decimal places
  double multiplyValues(double optionA, int optionB) {
    // Return the product of optionA and optionB
    // Approximate to two decimal places
    return (optionA * optionB).roundToDouble() / 100;
  }
  // TODO: implement multiply
}

int sum(
  int optionA,
  int optionB,
) {
  var sum = optionA + optionB;

  // Add your function code here!
  return sum;
}

int cartItemTotal(
  int currentItemCount,
  int currentprice,
) {
  // increase currentItemCount by 1 and mulitply by current price
  final int minusone = currentItemCount + 1;
  final int total = minusone * currentprice;
  return total;
}

int cartItemTotalsubtract(
  int currentItemCount,
  int currentprice,
) {
  // increase currentItemCount by 1 and mulitply by current price
  final int minusone = currentItemCount - 1;
  final int total = minusone * currentprice;
  return total;
}

double newCustomFunction(double price) {
  if (price == null) {
    return 0;
  }
  return price * -1;
}

double multiplynum(
  double optionA,
  int optionB,
) {
  return (optionA * optionB).roundToDouble() / 100;
}

double subtotal(
  int quantity,
  double price,
) {
  return quantity * price;
}

double totalPrice(
  double subtotal,
  double tax,
  double shipping,
) {
  return subtotal + (subtotal * (tax / 100)) + shipping;
}

dynamic extracJson(ProductsRecord prodtsuc) {
  // extract list of items from document in a collection and present as json
  return {
    'productName': prodtsuc.productName,
    'productImage': prodtsuc.productImage,
    'productSizes': prodtsuc.productSizes,
    'productColors': prodtsuc.productColors,
    'productPrice': prodtsuc.productPrice,
    'productsDesc': prodtsuc.productsDesc,
    'price': prodtsuc.price,
  };
}
