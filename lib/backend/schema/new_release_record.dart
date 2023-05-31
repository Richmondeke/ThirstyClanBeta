import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewReleaseRecord extends FirestoreRecord {
  NewReleaseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "AlbumName" field.
  String? _albumName;
  String get albumName => _albumName ?? '';
  bool hasAlbumName() => _albumName != null;

  // "AppleMusic" field.
  String? _appleMusic;
  String get appleMusic => _appleMusic ?? '';
  bool hasAppleMusic() => _appleMusic != null;

  // "Spotify" field.
  String? _spotify;
  String get spotify => _spotify ?? '';
  bool hasSpotify() => _spotify != null;

  // "ArtisteName" field.
  String? _artisteName;
  String get artisteName => _artisteName ?? '';
  bool hasArtisteName() => _artisteName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "AlbumArt" field.
  String? _albumArt;
  String get albumArt => _albumArt ?? '';
  bool hasAlbumArt() => _albumArt != null;

  void _initializeFields() {
    _albumName = snapshotData['AlbumName'] as String?;
    _appleMusic = snapshotData['AppleMusic'] as String?;
    _spotify = snapshotData['Spotify'] as String?;
    _artisteName = snapshotData['ArtisteName'] as String?;
    _description = snapshotData['Description'] as String?;
    _albumArt = snapshotData['AlbumArt'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NewRelease');

  static Stream<NewReleaseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewReleaseRecord.fromSnapshot(s));

  static Future<NewReleaseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewReleaseRecord.fromSnapshot(s));

  static NewReleaseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewReleaseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewReleaseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewReleaseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewReleaseRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createNewReleaseRecordData({
  String? albumName,
  String? appleMusic,
  String? spotify,
  String? artisteName,
  String? description,
  String? albumArt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AlbumName': albumName,
      'AppleMusic': appleMusic,
      'Spotify': spotify,
      'ArtisteName': artisteName,
      'Description': description,
      'AlbumArt': albumArt,
    }.withoutNulls,
  );

  return firestoreData;
}
