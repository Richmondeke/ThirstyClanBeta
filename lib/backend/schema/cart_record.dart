import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasProduct() => _product != null;

  // "Amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Size" field.
  int? _size;
  int get size => _size ?? 0;
  bool hasSize() => _size != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Size1" field.
  String? _size1;
  String get size1 => _size1 ?? '';
  bool hasSize1() => _size1 != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "productref" field.
  DocumentReference? _productref;
  DocumentReference? get productref => _productref;
  bool hasProductref() => _productref != null;

  // "CardItemTotal" field.
  int? _cardItemTotal;
  int get cardItemTotal => _cardItemTotal ?? 0;
  bool hasCardItemTotal() => _cardItemTotal != null;

  void _initializeFields() {
    _product = snapshotData['Product'] as String?;
    _amount = snapshotData['Amount'] as int?;
    _quantity = snapshotData['Quantity'] as int?;
    _size = snapshotData['Size'] as int?;
    _status = snapshotData['status'] as String?;
    _image = snapshotData['image'] as String?;
    _size1 = snapshotData['Size1'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _productref = snapshotData['productref'] as DocumentReference?;
    _cardItemTotal = snapshotData['CardItemTotal'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCartRecordData({
  String? product,
  int? amount,
  int? quantity,
  int? size,
  String? status,
  String? image,
  String? size1,
  DocumentReference? user,
  DocumentReference? productref,
  int? cardItemTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Product': product,
      'Amount': amount,
      'Quantity': quantity,
      'Size': size,
      'status': status,
      'image': image,
      'Size1': size1,
      'user': user,
      'productref': productref,
      'CardItemTotal': cardItemTotal,
    }.withoutNulls,
  );

  return firestoreData;
}
