import 'dart:async';

import 'package:collection/collection.dart';

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

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "productref" field.
  DocumentReference? _productref;
  DocumentReference? get productref => _productref;
  bool hasProductref() => _productref != null;

  // "isDelivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  // "isPaid" field.
  bool? _isPaid;
  bool get isPaid => _isPaid ?? false;
  bool hasIsPaid() => _isPaid != null;

  void _initializeFields() {
    _quantity = castToType<int>(snapshotData['Quantity']);
    _user = snapshotData['user'] as DocumentReference?;
    _productref = snapshotData['productref'] as DocumentReference?;
    _isDelivered = snapshotData['isDelivered'] as bool?;
    _isPaid = snapshotData['isPaid'] as bool?;
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

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  int? quantity,
  DocumentReference? user,
  DocumentReference? productref,
  bool? isDelivered,
  bool? isPaid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Quantity': quantity,
      'user': user,
      'productref': productref,
      'isDelivered': isDelivered,
      'isPaid': isPaid,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.quantity == e2?.quantity &&
        e1?.user == e2?.user &&
        e1?.productref == e2?.productref &&
        e1?.isDelivered == e2?.isDelivered &&
        e1?.isPaid == e2?.isPaid;
  }

  @override
  int hash(CartRecord? e) => const ListEquality()
      .hash([e?.quantity, e?.user, e?.productref, e?.isDelivered, e?.isPaid]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
