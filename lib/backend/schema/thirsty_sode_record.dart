import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThirstySodeRecord extends FirestoreRecord {
  ThirstySodeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "EpisodeName" field.
  String? _episodeName;
  String get episodeName => _episodeName ?? '';
  bool hasEpisodeName() => _episodeName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "EpisodeNumber" field.
  String? _episodeNumber;
  String get episodeNumber => _episodeNumber ?? '';
  bool hasEpisodeNumber() => _episodeNumber != null;

  // "Thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  // "Youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  void _initializeFields() {
    _episodeName = snapshotData['EpisodeName'] as String?;
    _description = snapshotData['Description'] as String?;
    _episodeNumber = snapshotData['EpisodeNumber'] as String?;
    _thumbnail = snapshotData['Thumbnail'] as String?;
    _youtube = snapshotData['Youtube'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ThirstySode');

  static Stream<ThirstySodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThirstySodeRecord.fromSnapshot(s));

  static Future<ThirstySodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThirstySodeRecord.fromSnapshot(s));

  static ThirstySodeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ThirstySodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThirstySodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThirstySodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThirstySodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThirstySodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThirstySodeRecordData({
  String? episodeName,
  String? description,
  String? episodeNumber,
  String? thumbnail,
  String? youtube,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'EpisodeName': episodeName,
      'Description': description,
      'EpisodeNumber': episodeNumber,
      'Thumbnail': thumbnail,
      'Youtube': youtube,
    }.withoutNulls,
  );

  return firestoreData;
}

class ThirstySodeRecordDocumentEquality implements Equality<ThirstySodeRecord> {
  const ThirstySodeRecordDocumentEquality();

  @override
  bool equals(ThirstySodeRecord? e1, ThirstySodeRecord? e2) {
    return e1?.episodeName == e2?.episodeName &&
        e1?.description == e2?.description &&
        e1?.episodeNumber == e2?.episodeNumber &&
        e1?.thumbnail == e2?.thumbnail &&
        e1?.youtube == e2?.youtube;
  }

  @override
  int hash(ThirstySodeRecord? e) => const ListEquality().hash([
        e?.episodeName,
        e?.description,
        e?.episodeNumber,
        e?.thumbnail,
        e?.youtube
      ]);

  @override
  bool isValidKey(Object? o) => o is ThirstySodeRecord;
}
