import 'dart:async';

import 'package:collection/collection.dart';

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

  // "cartitems" field.
  List<DocumentReference>? _cartitems;
  List<DocumentReference> get cartitems => _cartitems ?? const [];
  bool hasCartitems() => _cartitems != null;

  // "isDelivered" field.
  List<bool>? _isDelivered;
  List<bool> get isDelivered => _isDelivered ?? const [];
  bool hasIsDelivered() => _isDelivered != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _txref = snapshotData['txref'] as String?;
    _transactionid = snapshotData['transactionid'] as String?;
    _cartitems = getDataList(snapshotData['cartitems']);
    _isDelivered = getDataList(snapshotData['isDelivered']);
    _created = snapshotData['created'] as DateTime?;
    _amount = castToType<double>(snapshotData['amount']);
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

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  DocumentReference? userref,
  String? txref,
  String? transactionid,
  DateTime? created,
  double? amount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'txref': txref,
      'transactionid': transactionid,
      'created': created,
      'amount': amount,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userref == e2?.userref &&
        e1?.txref == e2?.txref &&
        e1?.transactionid == e2?.transactionid &&
        listEquality.equals(e1?.cartitems, e2?.cartitems) &&
        listEquality.equals(e1?.isDelivered, e2?.isDelivered) &&
        e1?.created == e2?.created &&
        e1?.amount == e2?.amount;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.userref,
        e?.txref,
        e?.transactionid,
        e?.cartitems,
        e?.isDelivered,
        e?.created,
        e?.amount
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
