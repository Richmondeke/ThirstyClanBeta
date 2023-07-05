import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtisteRecord extends FirestoreRecord {
  ArtisteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Artistename" field.
  String? _artistename;
  String get artistename => _artistename ?? '';
  bool hasArtistename() => _artistename != null;

  // "Artistedescription" field.
  String? _artistedescription;
  String get artistedescription => _artistedescription ?? '';
  bool hasArtistedescription() => _artistedescription != null;

  // "Instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "TikTok" field.
  String? _tikTok;
  String get tikTok => _tikTok ?? '';
  bool hasTikTok() => _tikTok != null;

  // "Twitter" field.
  String? _twitter;
  String get twitter => _twitter ?? '';
  bool hasTwitter() => _twitter != null;

  // "Youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  // "AppleMusic" field.
  String? _appleMusic;
  String get appleMusic => _appleMusic ?? '';
  bool hasAppleMusic() => _appleMusic != null;

  // "Spotify" field.
  String? _spotify;
  String get spotify => _spotify ?? '';
  bool hasSpotify() => _spotify != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  bool hasNickname() => _nickname != null;

  // "Artisteimage" field.
  String? _artisteimage;
  String get artisteimage => _artisteimage ?? '';
  bool hasArtisteimage() => _artisteimage != null;

  void _initializeFields() {
    _artistename = snapshotData['Artistename'] as String?;
    _artistedescription = snapshotData['Artistedescription'] as String?;
    _instagram = snapshotData['Instagram'] as String?;
    _tikTok = snapshotData['TikTok'] as String?;
    _twitter = snapshotData['Twitter'] as String?;
    _youtube = snapshotData['Youtube'] as String?;
    _appleMusic = snapshotData['AppleMusic'] as String?;
    _spotify = snapshotData['Spotify'] as String?;
    _nickname = snapshotData['nickname'] as String?;
    _artisteimage = snapshotData['Artisteimage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Artiste');

  static Stream<ArtisteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtisteRecord.fromSnapshot(s));

  static Future<ArtisteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtisteRecord.fromSnapshot(s));

  static ArtisteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArtisteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtisteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtisteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtisteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtisteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtisteRecordData({
  String? artistename,
  String? artistedescription,
  String? instagram,
  String? tikTok,
  String? twitter,
  String? youtube,
  String? appleMusic,
  String? spotify,
  String? nickname,
  String? artisteimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Artistename': artistename,
      'Artistedescription': artistedescription,
      'Instagram': instagram,
      'TikTok': tikTok,
      'Twitter': twitter,
      'Youtube': youtube,
      'AppleMusic': appleMusic,
      'Spotify': spotify,
      'nickname': nickname,
      'Artisteimage': artisteimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArtisteRecordDocumentEquality implements Equality<ArtisteRecord> {
  const ArtisteRecordDocumentEquality();

  @override
  bool equals(ArtisteRecord? e1, ArtisteRecord? e2) {
    return e1?.artistename == e2?.artistename &&
        e1?.artistedescription == e2?.artistedescription &&
        e1?.instagram == e2?.instagram &&
        e1?.tikTok == e2?.tikTok &&
        e1?.twitter == e2?.twitter &&
        e1?.youtube == e2?.youtube &&
        e1?.appleMusic == e2?.appleMusic &&
        e1?.spotify == e2?.spotify &&
        e1?.nickname == e2?.nickname &&
        e1?.artisteimage == e2?.artisteimage;
  }

  @override
  int hash(ArtisteRecord? e) => const ListEquality().hash([
        e?.artistename,
        e?.artistedescription,
        e?.instagram,
        e?.tikTok,
        e?.twitter,
        e?.youtube,
        e?.appleMusic,
        e?.spotify,
        e?.nickname,
        e?.artisteimage
      ]);

  @override
  bool isValidKey(Object? o) => o is ArtisteRecord;
}
