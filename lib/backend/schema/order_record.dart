import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "txref" field.
  String? _txref;
  String get txref => _txref ?? '';
  bool hasTxref() => _txref != null;

  // "transactionid" field.
  String? _transactionid;
  String get transactionid => _transactionid ?? '';
  bool hasTransactionid() => _transactionid != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "products" field.
  DocumentReference? _products;
  DocumentReference? get products => _products;
  bool hasProducts() => _products != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _quantity = snapshotData['quantity'] as int?;
    _size = snapshotData['size'] as String?;
    _status = snapshotData['status'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _txref = snapshotData['txref'] as String?;
    _transactionid = snapshotData['transactionid'] as String?;
    _image = snapshotData['image'] as String?;
    _products = snapshotData['products'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createOrderRecordData({
  String? name,
  double? amount,
  int? quantity,
  String? size,
  String? status,
  DocumentReference? userref,
  String? txref,
  String? transactionid,
  String? image,
  DocumentReference? products,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'quantity': quantity,
      'size': size,
      'status': status,
      'userref': userref,
      'txref': txref,
      'transactionid': transactionid,
      'image': image,
      'products': products,
    }.withoutNulls,
  );

  return firestoreData;
}
