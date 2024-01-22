import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagenesupdateRecord extends FirestoreRecord {
  ImagenesupdateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photoupdate" field.
  String? _photoupdate;
  String get photoupdate => _photoupdate ?? '';
  bool hasPhotoupdate() => _photoupdate != null;

  void _initializeFields() {
    _photoupdate = snapshotData['photoupdate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imagenesupdate');

  static Stream<ImagenesupdateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagenesupdateRecord.fromSnapshot(s));

  static Future<ImagenesupdateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagenesupdateRecord.fromSnapshot(s));

  static ImagenesupdateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImagenesupdateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagenesupdateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagenesupdateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagenesupdateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagenesupdateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagenesupdateRecordData({
  String? photoupdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photoupdate': photoupdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagenesupdateRecordDocumentEquality
    implements Equality<ImagenesupdateRecord> {
  const ImagenesupdateRecordDocumentEquality();

  @override
  bool equals(ImagenesupdateRecord? e1, ImagenesupdateRecord? e2) {
    return e1?.photoupdate == e2?.photoupdate;
  }

  @override
  int hash(ImagenesupdateRecord? e) =>
      const ListEquality().hash([e?.photoupdate]);

  @override
  bool isValidKey(Object? o) => o is ImagenesupdateRecord;
}
