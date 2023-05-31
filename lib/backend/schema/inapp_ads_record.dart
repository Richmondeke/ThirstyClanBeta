import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InappAdsRecord extends FirestoreRecord {
  InappAdsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('InappAds');

  static Stream<InappAdsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InappAdsRecord.fromSnapshot(s));

  static Future<InappAdsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InappAdsRecord.fromSnapshot(s));

  static InappAdsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InappAdsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InappAdsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InappAdsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InappAdsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createInappAdsRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}
