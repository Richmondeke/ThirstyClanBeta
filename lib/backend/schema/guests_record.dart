import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuestsRecord extends FirestoreRecord {
  GuestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "guestName" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "rsvp" field.
  bool? _rsvp;
  bool get rsvp => _rsvp ?? false;
  bool hasRsvp() => _rsvp != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "profileComplete" field.
  bool? _profileComplete;
  bool get profileComplete => _profileComplete ?? false;
  bool hasProfileComplete() => _profileComplete != null;

  // "EmailVerified" field.
  bool? _emailVerified;
  bool get emailVerified => _emailVerified ?? false;
  bool hasEmailVerified() => _emailVerified != null;

  // "dailycoffees" field.
  int? _dailycoffees;
  int get dailycoffees => _dailycoffees ?? 0;
  bool hasDailycoffees() => _dailycoffees != null;

  // "averageRating" field.
  double? _averageRating;
  double get averageRating => _averageRating ?? 0.0;
  bool hasAverageRating() => _averageRating != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  void _initializeFields() {
    _guestName = snapshotData['guestName'] as String?;
    _rsvp = snapshotData['rsvp'] as bool?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _admin = snapshotData['admin'] as bool?;
    _profileComplete = snapshotData['profileComplete'] as bool?;
    _emailVerified = snapshotData['EmailVerified'] as bool?;
    _dailycoffees = castToType<int>(snapshotData['dailycoffees']);
    _averageRating = castToType<double>(snapshotData['averageRating']);
    _country = snapshotData['country'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guests');

  static Stream<GuestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuestsRecord.fromSnapshot(s));

  static Future<GuestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GuestsRecord.fromSnapshot(s));

  static GuestsRecord fromSnapshot(DocumentSnapshot snapshot) => GuestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuestsRecordData({
  String? guestName,
  bool? rsvp,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? admin,
  bool? profileComplete,
  bool? emailVerified,
  int? dailycoffees,
  double? averageRating,
  String? country,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'guestName': guestName,
      'rsvp': rsvp,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'admin': admin,
      'profileComplete': profileComplete,
      'EmailVerified': emailVerified,
      'dailycoffees': dailycoffees,
      'averageRating': averageRating,
      'country': country,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuestsRecordDocumentEquality implements Equality<GuestsRecord> {
  const GuestsRecordDocumentEquality();

  @override
  bool equals(GuestsRecord? e1, GuestsRecord? e2) {
    return e1?.guestName == e2?.guestName &&
        e1?.rsvp == e2?.rsvp &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.admin == e2?.admin &&
        e1?.profileComplete == e2?.profileComplete &&
        e1?.emailVerified == e2?.emailVerified &&
        e1?.dailycoffees == e2?.dailycoffees &&
        e1?.averageRating == e2?.averageRating &&
        e1?.country == e2?.country;
  }

  @override
  int hash(GuestsRecord? e) => const ListEquality().hash([
        e?.guestName,
        e?.rsvp,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.admin,
        e?.profileComplete,
        e?.emailVerified,
        e?.dailycoffees,
        e?.averageRating,
        e?.country
      ]);

  @override
  bool isValidKey(Object? o) => o is GuestsRecord;
}
