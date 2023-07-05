import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProductName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "ProductImage" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "ProductSizes" field.
  List<String>? _productSizes;
  List<String> get productSizes => _productSizes ?? const [];
  bool hasProductSizes() => _productSizes != null;

  // "ProductColors" field.
  String? _productColors;
  String get productColors => _productColors ?? '';
  bool hasProductColors() => _productColors != null;

  // "ProductPrice" field.
  int? _productPrice;
  int get productPrice => _productPrice ?? 0;
  bool hasProductPrice() => _productPrice != null;

  // "ProductsDesc" field.
  String? _productsDesc;
  String get productsDesc => _productsDesc ?? '';
  bool hasProductsDesc() => _productsDesc != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "Colors" field.
  List<String>? _colors;
  List<String> get colors => _colors ?? const [];
  bool hasColors() => _colors != null;

  // "Size" field.
  List<String>? _size;
  List<String> get size => _size ?? const [];
  bool hasSize() => _size != null;

  // "Created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  void _initializeFields() {
    _productName = snapshotData['ProductName'] as String?;
    _productImage = snapshotData['ProductImage'] as String?;
    _productSizes = getDataList(snapshotData['ProductSizes']);
    _productColors = snapshotData['ProductColors'] as String?;
    _productPrice = castToType<int>(snapshotData['ProductPrice']);
    _productsDesc = snapshotData['ProductsDesc'] as String?;
    _price = castToType<double>(snapshotData['Price']);
    _colors = getDataList(snapshotData['Colors']);
    _size = getDataList(snapshotData['Size']);
    _created = snapshotData['Created'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productName,
  String? productImage,
  String? productColors,
  int? productPrice,
  String? productsDesc,
  double? price,
  DateTime? created,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductName': productName,
      'ProductImage': productImage,
      'ProductColors': productColors,
      'ProductPrice': productPrice,
      'ProductsDesc': productsDesc,
      'Price': price,
      'Created': created,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.productName == e2?.productName &&
        e1?.productImage == e2?.productImage &&
        listEquality.equals(e1?.productSizes, e2?.productSizes) &&
        e1?.productColors == e2?.productColors &&
        e1?.productPrice == e2?.productPrice &&
        e1?.productsDesc == e2?.productsDesc &&
        e1?.price == e2?.price &&
        listEquality.equals(e1?.colors, e2?.colors) &&
        listEquality.equals(e1?.size, e2?.size) &&
        e1?.created == e2?.created;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.productImage,
        e?.productSizes,
        e?.productColors,
        e?.productPrice,
        e?.productsDesc,
        e?.price,
        e?.colors,
        e?.size,
        e?.created
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
