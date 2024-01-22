import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContadorRecord extends FirestoreRecord {
  ContadorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  void _initializeFields() {
    _count = castToType<int>(snapshotData['count']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contador');

  static Stream<ContadorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContadorRecord.fromSnapshot(s));

  static Future<ContadorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContadorRecord.fromSnapshot(s));

  static ContadorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContadorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContadorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContadorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContadorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContadorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContadorRecordData({
  int? count,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'count': count,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContadorRecordDocumentEquality implements Equality<ContadorRecord> {
  const ContadorRecordDocumentEquality();

  @override
  bool equals(ContadorRecord? e1, ContadorRecord? e2) {
    return e1?.count == e2?.count;
  }

  @override
  int hash(ContadorRecord? e) => const ListEquality().hash([e?.count]);

  @override
  bool isValidKey(Object? o) => o is ContadorRecord;
}
