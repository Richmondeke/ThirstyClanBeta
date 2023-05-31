import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartsRecord extends FirestoreRecord {
  CartsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "itemCount" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  bool hasItemCount() => _itemCount != null;

  // "cartActive" field.
  bool? _cartActive;
  bool get cartActive => _cartActive ?? false;
  bool hasCartActive() => _cartActive != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "cartItems" field.
  List<DocumentReference>? _cartItems;
  List<DocumentReference> get cartItems => _cartItems ?? const [];
  bool hasCartItems() => _cartItems != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _itemCount = snapshotData['itemCount'] as int?;
    _cartActive = snapshotData['cartActive'] as bool?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _cartItems = getDataList(snapshotData['cartItems']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Carts');

  static Stream<CartsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartsRecord.fromSnapshot(s));

  static Future<CartsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartsRecord.fromSnapshot(s));

  static CartsRecord fromSnapshot(DocumentSnapshot snapshot) => CartsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCartsRecordData({
  DocumentReference? userRef,
  int? itemCount,
  bool? cartActive,
  double? subtotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'itemCount': itemCount,
      'cartActive': cartActive,
      'subtotal': subtotal,
    }.withoutNulls,
  );

  return firestoreData;
}
