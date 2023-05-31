import 'dart:async';

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

  void _initializeFields() {
    _productName = snapshotData['ProductName'] as String?;
    _productImage = snapshotData['ProductImage'] as String?;
    _productSizes = getDataList(snapshotData['ProductSizes']);
    _productColors = snapshotData['ProductColors'] as String?;
    _productPrice = snapshotData['ProductPrice'] as int?;
    _productsDesc = snapshotData['ProductsDesc'] as String?;
    _price = castToType<double>(snapshotData['Price']);
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
}

Map<String, dynamic> createProductsRecordData({
  String? productName,
  String? productImage,
  String? productColors,
  int? productPrice,
  String? productsDesc,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductName': productName,
      'ProductImage': productImage,
      'ProductColors': productColors,
      'ProductPrice': productPrice,
      'ProductsDesc': productsDesc,
      'Price': price,
    }.withoutNulls,
  );

  return firestoreData;
}
