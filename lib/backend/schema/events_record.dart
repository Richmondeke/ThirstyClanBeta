import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "eventTime" field.
  DateTime? _eventTime;
  DateTime? get eventTime => _eventTime;
  bool hasEventTime() => _eventTime != null;

  // "eventLocation" field.
  String? _eventLocation;
  String get eventLocation => _eventLocation ?? '';
  bool hasEventLocation() => _eventLocation != null;

  // "eventDescription" field.
  String? _eventDescription;
  String get eventDescription => _eventDescription ?? '';
  bool hasEventDescription() => _eventDescription != null;

  // "eventPhoto" field.
  String? _eventPhoto;
  String get eventPhoto => _eventPhoto ?? '';
  bool hasEventPhoto() => _eventPhoto != null;

  // "eventLocationName" field.
  String? _eventLocationName;
  String get eventLocationName => _eventLocationName ?? '';
  bool hasEventLocationName() => _eventLocationName != null;

  // "registered" field.
  bool? _registered;
  bool get registered => _registered ?? false;
  bool hasRegistered() => _registered != null;

  // "eventvideo" field.
  String? _eventvideo;
  String get eventvideo => _eventvideo ?? '';
  bool hasEventvideo() => _eventvideo != null;

  void _initializeFields() {
    _eventName = snapshotData['eventName'] as String?;
    _eventTime = snapshotData['eventTime'] as DateTime?;
    _eventLocation = snapshotData['eventLocation'] as String?;
    _eventDescription = snapshotData['eventDescription'] as String?;
    _eventPhoto = snapshotData['eventPhoto'] as String?;
    _eventLocationName = snapshotData['eventLocationName'] as String?;
    _registered = snapshotData['registered'] as bool?;
    _eventvideo = snapshotData['eventvideo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  DateTime? eventTime,
  String? eventLocation,
  String? eventDescription,
  String? eventPhoto,
  String? eventLocationName,
  bool? registered,
  String? eventvideo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eventName': eventName,
      'eventTime': eventTime,
      'eventLocation': eventLocation,
      'eventDescription': eventDescription,
      'eventPhoto': eventPhoto,
      'eventLocationName': eventLocationName,
      'registered': registered,
      'eventvideo': eventvideo,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.eventName == e2?.eventName &&
        e1?.eventTime == e2?.eventTime &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventDescription == e2?.eventDescription &&
        e1?.eventPhoto == e2?.eventPhoto &&
        e1?.eventLocationName == e2?.eventLocationName &&
        e1?.registered == e2?.registered &&
        e1?.eventvideo == e2?.eventvideo;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.eventTime,
        e?.eventLocation,
        e?.eventDescription,
        e?.eventPhoto,
        e?.eventLocationName,
        e?.registered,
        e?.eventvideo
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
