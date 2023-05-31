import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemDetailRecord extends FirestoreRecord {
  ItemDetailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "cartRef" field.
  DocumentReference? _cartRef;
  DocumentReference? get cartRef => _cartRef;
  bool hasCartRef() => _cartRef != null;

  // "menuitemRef" field.
  DocumentReference? _menuitemRef;
  DocumentReference? get menuitemRef => _menuitemRef;
  bool hasMenuitemRef() => _menuitemRef != null;

  // "modifiers" field.
  List<String>? _modifiers;
  List<String> get modifiers => _modifiers ?? const [];
  bool hasModifiers() => _modifiers != null;

  // "modifiers_1" field.
  List<String>? _modifiers1;
  List<String> get modifiers1 => _modifiers1 ?? const [];
  bool hasModifiers1() => _modifiers1 != null;

  // "menuitemPhoto" field.
  String? _menuitemPhoto;
  String get menuitemPhoto => _menuitemPhoto ?? '';
  bool hasMenuitemPhoto() => _menuitemPhoto != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = snapshotData['quantity'] as int?;
    _cartRef = snapshotData['cartRef'] as DocumentReference?;
    _menuitemRef = snapshotData['menuitemRef'] as DocumentReference?;
    _modifiers = getDataList(snapshotData['modifiers']);
    _modifiers1 = getDataList(snapshotData['modifiers_1']);
    _menuitemPhoto = snapshotData['menuitemPhoto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itemDetail');

  static Stream<ItemDetailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemDetailRecord.fromSnapshot(s));

  static Future<ItemDetailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemDetailRecord.fromSnapshot(s));

  static ItemDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemDetailRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createItemDetailRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  int? quantity,
  DocumentReference? cartRef,
  DocumentReference? menuitemRef,
  String? menuitemPhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'quantity': quantity,
      'cartRef': cartRef,
      'menuitemRef': menuitemRef,
      'menuitemPhoto': menuitemPhoto,
    }.withoutNulls,
  );

  return firestoreData;
}
