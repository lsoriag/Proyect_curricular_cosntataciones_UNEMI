import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConstataciondeactivosRecord extends FirestoreRecord {
  ConstataciondeactivosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "identification" field.
  String? _identification;
  String get identification => _identification ?? '';
  bool hasIdentification() => _identification != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "signature" field.
  String? _signature;
  String get signature => _signature ?? '';
  bool hasSignature() => _signature != null;

  // "maintenanceNotes" field.
  String? _maintenanceNotes;
  String get maintenanceNotes => _maintenanceNotes ?? '';
  bool hasMaintenanceNotes() => _maintenanceNotes != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  bool hasViews() => _views != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "Codigo_qr" field.
  String? _codigoQr;
  String get codigoQr => _codigoQr ?? '';
  bool hasCodigoQr() => _codigoQr != null;

  // "photos_url" field.
  String? _photosUrl;
  String get photosUrl => _photosUrl ?? '';
  bool hasPhotosUrl() => _photosUrl != null;

  // "obs_identificacionactivo" field.
  bool? _obsIdentificacionactivo;
  bool get obsIdentificacionactivo => _obsIdentificacionactivo ?? false;
  bool hasObsIdentificacionactivo() => _obsIdentificacionactivo != null;

  // "obs_condicionfisicaactivo" field.
  bool? _obsCondicionfisicaactivo;
  bool get obsCondicionfisicaactivo => _obsCondicionfisicaactivo ?? false;
  bool hasObsCondicionfisicaactivo() => _obsCondicionfisicaactivo != null;

  // "obs_ubicacionactivo" field.
  bool? _obsUbicacionactivo;
  bool get obsUbicacionactivo => _obsUbicacionactivo ?? false;
  bool hasObsUbicacionactivo() => _obsUbicacionactivo != null;

  // "obs_mantenimientoyreparacionesactivo" field.
  bool? _obsMantenimientoyreparacionesactivo;
  bool get obsMantenimientoyreparacionesactivo =>
      _obsMantenimientoyreparacionesactivo ?? false;
  bool hasObsMantenimientoyreparacionesactivo() =>
      _obsMantenimientoyreparacionesactivo != null;

  // "obs_usoyeficienciaactivo" field.
  bool? _obsUsoyeficienciaactivo;
  bool get obsUsoyeficienciaactivo => _obsUsoyeficienciaactivo ?? false;
  bool hasObsUsoyeficienciaactivo() => _obsUsoyeficienciaactivo != null;

  void _initializeFields() {
    _identification = snapshotData['identification'] as String?;
    _description = snapshotData['description'] as String?;
    _condition = snapshotData['condition'] as String?;
    _user = snapshotData['user'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _comments = snapshotData['comments'] as String?;
    _signature = snapshotData['signature'] as String?;
    _maintenanceNotes = snapshotData['maintenanceNotes'] as String?;
    _views = castToType<int>(snapshotData['views']);
    _photos = getDataList(snapshotData['photos']);
    _codigoQr = snapshotData['Codigo_qr'] as String?;
    _photosUrl = snapshotData['photos_url'] as String?;
    _obsIdentificacionactivo =
        snapshotData['obs_identificacionactivo'] as bool?;
    _obsCondicionfisicaactivo =
        snapshotData['obs_condicionfisicaactivo'] as bool?;
    _obsUbicacionactivo = snapshotData['obs_ubicacionactivo'] as bool?;
    _obsMantenimientoyreparacionesactivo =
        snapshotData['obs_mantenimientoyreparacionesactivo'] as bool?;
    _obsUsoyeficienciaactivo =
        snapshotData['obs_usoyeficienciaactivo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('constataciondeactivos');

  static Stream<ConstataciondeactivosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ConstataciondeactivosRecord.fromSnapshot(s));

  static Future<ConstataciondeactivosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ConstataciondeactivosRecord.fromSnapshot(s));

  static ConstataciondeactivosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConstataciondeactivosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConstataciondeactivosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConstataciondeactivosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConstataciondeactivosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConstataciondeactivosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConstataciondeactivosRecordData({
  String? identification,
  String? description,
  String? condition,
  String? user,
  DateTime? date,
  String? comments,
  String? signature,
  String? maintenanceNotes,
  int? views,
  String? codigoQr,
  String? photosUrl,
  bool? obsIdentificacionactivo,
  bool? obsCondicionfisicaactivo,
  bool? obsUbicacionactivo,
  bool? obsMantenimientoyreparacionesactivo,
  bool? obsUsoyeficienciaactivo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'identification': identification,
      'description': description,
      'condition': condition,
      'user': user,
      'date': date,
      'comments': comments,
      'signature': signature,
      'maintenanceNotes': maintenanceNotes,
      'views': views,
      'Codigo_qr': codigoQr,
      'photos_url': photosUrl,
      'obs_identificacionactivo': obsIdentificacionactivo,
      'obs_condicionfisicaactivo': obsCondicionfisicaactivo,
      'obs_ubicacionactivo': obsUbicacionactivo,
      'obs_mantenimientoyreparacionesactivo':
          obsMantenimientoyreparacionesactivo,
      'obs_usoyeficienciaactivo': obsUsoyeficienciaactivo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConstataciondeactivosRecordDocumentEquality
    implements Equality<ConstataciondeactivosRecord> {
  const ConstataciondeactivosRecordDocumentEquality();

  @override
  bool equals(
      ConstataciondeactivosRecord? e1, ConstataciondeactivosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.identification == e2?.identification &&
        e1?.description == e2?.description &&
        e1?.condition == e2?.condition &&
        e1?.user == e2?.user &&
        e1?.date == e2?.date &&
        e1?.comments == e2?.comments &&
        e1?.signature == e2?.signature &&
        e1?.maintenanceNotes == e2?.maintenanceNotes &&
        e1?.views == e2?.views &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        e1?.codigoQr == e2?.codigoQr &&
        e1?.photosUrl == e2?.photosUrl &&
        e1?.obsIdentificacionactivo == e2?.obsIdentificacionactivo &&
        e1?.obsCondicionfisicaactivo == e2?.obsCondicionfisicaactivo &&
        e1?.obsUbicacionactivo == e2?.obsUbicacionactivo &&
        e1?.obsMantenimientoyreparacionesactivo ==
            e2?.obsMantenimientoyreparacionesactivo &&
        e1?.obsUsoyeficienciaactivo == e2?.obsUsoyeficienciaactivo;
  }

  @override
  int hash(ConstataciondeactivosRecord? e) => const ListEquality().hash([
        e?.identification,
        e?.description,
        e?.condition,
        e?.user,
        e?.date,
        e?.comments,
        e?.signature,
        e?.maintenanceNotes,
        e?.views,
        e?.photos,
        e?.codigoQr,
        e?.photosUrl,
        e?.obsIdentificacionactivo,
        e?.obsCondicionfisicaactivo,
        e?.obsUbicacionactivo,
        e?.obsMantenimientoyreparacionesactivo,
        e?.obsUsoyeficienciaactivo
      ]);

  @override
  bool isValidKey(Object? o) => o is ConstataciondeactivosRecord;
}
