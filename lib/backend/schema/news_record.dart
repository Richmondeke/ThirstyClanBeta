import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsRecord extends FirestoreRecord {
  NewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "headline" field.
  String? _headline;
  String get headline => _headline ?? '';
  bool hasHeadline() => _headline != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Newsimage" field.
  String? _newsimage;
  String get newsimage => _newsimage ?? '';
  bool hasNewsimage() => _newsimage != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "dateposted" field.
  DateTime? _dateposted;
  DateTime? get dateposted => _dateposted;
  bool hasDateposted() => _dateposted != null;

  void _initializeFields() {
    _headline = snapshotData['headline'] as String?;
    _description = snapshotData['description'] as String?;
    _newsimage = snapshotData['Newsimage'] as String?;
    _video = snapshotData['video'] as String?;
    _dateposted = snapshotData['dateposted'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsRecord.fromSnapshot(s));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsRecord.fromSnapshot(s));

  static NewsRecord fromSnapshot(DocumentSnapshot snapshot) => NewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsRecordData({
  String? headline,
  String? description,
  String? newsimage,
  String? video,
  DateTime? dateposted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'headline': headline,
      'description': description,
      'Newsimage': newsimage,
      'video': video,
      'dateposted': dateposted,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsRecordDocumentEquality implements Equality<NewsRecord> {
  const NewsRecordDocumentEquality();

  @override
  bool equals(NewsRecord? e1, NewsRecord? e2) {
    return e1?.headline == e2?.headline &&
        e1?.description == e2?.description &&
        e1?.newsimage == e2?.newsimage &&
        e1?.video == e2?.video &&
        e1?.dateposted == e2?.dateposted;
  }

  @override
  int hash(NewsRecord? e) => const ListEquality().hash(
      [e?.headline, e?.description, e?.newsimage, e?.video, e?.dateposted]);

  @override
  bool isValidKey(Object? o) => o is NewsRecord;
}
