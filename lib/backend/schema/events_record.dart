import 'dart:async';

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

  void _initializeFields() {
    _eventName = snapshotData['eventName'] as String?;
    _eventTime = snapshotData['eventTime'] as DateTime?;
    _eventLocation = snapshotData['eventLocation'] as String?;
    _eventDescription = snapshotData['eventDescription'] as String?;
    _eventPhoto = snapshotData['eventPhoto'] as String?;
    _eventLocationName = snapshotData['eventLocationName'] as String?;
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
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  DateTime? eventTime,
  String? eventLocation,
  String? eventDescription,
  String? eventPhoto,
  String? eventLocationName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eventName': eventName,
      'eventTime': eventTime,
      'eventLocation': eventLocation,
      'eventDescription': eventDescription,
      'eventPhoto': eventPhoto,
      'eventLocationName': eventLocationName,
    }.withoutNulls,
  );

  return firestoreData;
}
