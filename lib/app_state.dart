import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Cartitems = prefs.getStringList('ff_Cartitems')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _Cartitems;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_NewCart')) {
        try {
          _NewCart = jsonDecode(prefs.getString('ff_NewCart') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> _value) {
    _cart = _value;
  }

  void addToCart(DocumentReference _value) {
    _cart.add(_value);
  }

  void removeFromCart(DocumentReference _value) {
    _cart.remove(_value);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
  }

  void updateCartAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cart[_index] = updateFn(_cart[_index]);
  }

  int _sum = 0;
  int get sum => _sum;
  set sum(int _value) {
    _sum = _value;
  }

  int _quantity = 0;
  int get quantity => _quantity;
  set quantity(int _value) {
    _quantity = _value;
  }

  double _add = 0.0;
  double get add => _add;
  set add(double _value) {
    _add = _value;
  }

  String _txref = '';
  String get txref => _txref;
  set txref(String _value) {
    _txref = _value;
  }

  List<dynamic> _Cartitems = [];
  List<dynamic> get Cartitems => _Cartitems;
  set Cartitems(List<dynamic> _value) {
    _Cartitems = _value;
    prefs.setStringList(
        'ff_Cartitems', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToCartitems(dynamic _value) {
    _Cartitems.add(_value);
    prefs.setStringList(
        'ff_Cartitems', _Cartitems.map((x) => jsonEncode(x)).toList());
  }

  void removeFromCartitems(dynamic _value) {
    _Cartitems.remove(_value);
    prefs.setStringList(
        'ff_Cartitems', _Cartitems.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromCartitems(int _index) {
    _Cartitems.removeAt(_index);
    prefs.setStringList(
        'ff_Cartitems', _Cartitems.map((x) => jsonEncode(x)).toList());
  }

  void updateCartitemsAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _Cartitems[_index] = updateFn(_Cartitems[_index]);
    prefs.setStringList(
        'ff_Cartitems', _Cartitems.map((x) => jsonEncode(x)).toList());
  }

  dynamic _NewCart;
  dynamic get NewCart => _NewCart;
  set NewCart(dynamic _value) {
    _NewCart = _value;
    prefs.setString('ff_NewCart', jsonEncode(_value));
  }

  int _cartCount = 0;
  int get cartCount => _cartCount;
  set cartCount(int _value) {
    _cartCount = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
