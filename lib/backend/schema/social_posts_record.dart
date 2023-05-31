import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SocialPostsRecord extends FirestoreRecord {
  SocialPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postCreated" field.
  DateTime? _postCreated;
  DateTime? get postCreated => _postCreated;
  bool hasPostCreated() => _postCreated != null;

  // "postImage" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "postVideo" field.
  String? _postVideo;
  String get postVideo => _postVideo ?? '';
  bool hasPostVideo() => _postVideo != null;

  // "postDescription" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "postUser" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "postDisplayName" field.
  String? _postDisplayName;
  String get postDisplayName => _postDisplayName ?? '';
  bool hasPostDisplayName() => _postDisplayName != null;

  // "postUserImage" field.
  String? _postUserImage;
  String get postUserImage => _postUserImage ?? '';
  bool hasPostUserImage() => _postUserImage != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "num_likes" field.
  int? _numLikes;
  int get numLikes => _numLikes ?? 0;
  bool hasNumLikes() => _numLikes != null;

  // "num_comments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  void _initializeFields() {
    _postCreated = snapshotData['postCreated'] as DateTime?;
    _postImage = snapshotData['postImage'] as String?;
    _postVideo = snapshotData['postVideo'] as String?;
    _postDescription = snapshotData['postDescription'] as String?;
    _postUser = snapshotData['postUser'] as DocumentReference?;
    _postDisplayName = snapshotData['postDisplayName'] as String?;
    _postUserImage = snapshotData['postUserImage'] as String?;
    _likes = getDataList(snapshotData['likes']);
    _numLikes = snapshotData['num_likes'] as int?;
    _numComments = snapshotData['num_comments'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('socialPosts');

  static Stream<SocialPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SocialPostsRecord.fromSnapshot(s));

  static Future<SocialPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SocialPostsRecord.fromSnapshot(s));

  static SocialPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SocialPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SocialPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SocialPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SocialPostsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSocialPostsRecordData({
  DateTime? postCreated,
  String? postImage,
  String? postVideo,
  String? postDescription,
  DocumentReference? postUser,
  String? postDisplayName,
  String? postUserImage,
  int? numLikes,
  int? numComments,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postCreated': postCreated,
      'postImage': postImage,
      'postVideo': postVideo,
      'postDescription': postDescription,
      'postUser': postUser,
      'postDisplayName': postDisplayName,
      'postUserImage': postUserImage,
      'num_likes': numLikes,
      'num_comments': numComments,
    }.withoutNulls,
  );

  return firestoreData;
}
