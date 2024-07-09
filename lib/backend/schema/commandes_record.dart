import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommandesRecord extends FirestoreRecord {
  CommandesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "lieu_prise_en_charge" field.
  String? _lieuPriseEnCharge;
  String get lieuPriseEnCharge => _lieuPriseEnCharge ?? '';
  bool hasLieuPriseEnCharge() => _lieuPriseEnCharge != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "prix" field.
  int? _prix;
  int get prix => _prix ?? 0;
  bool hasPrix() => _prix != null;

  // "who_command_it" field.
  DocumentReference? _whoCommandIt;
  DocumentReference? get whoCommandIt => _whoCommandIt;
  bool hasWhoCommandIt() => _whoCommandIt != null;

  // "is_command_validated" field.
  bool? _isCommandValidated;
  bool get isCommandValidated => _isCommandValidated ?? false;
  bool hasIsCommandValidated() => _isCommandValidated != null;

  // "is_command_accepted" field.
  bool? _isCommandAccepted;
  bool get isCommandAccepted => _isCommandAccepted ?? false;
  bool hasIsCommandAccepted() => _isCommandAccepted != null;

  // "is_command_refused" field.
  bool? _isCommandRefused;
  bool get isCommandRefused => _isCommandRefused ?? false;
  bool hasIsCommandRefused() => _isCommandRefused != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _lieuPriseEnCharge = snapshotData['lieu_prise_en_charge'] as String?;
    _destination = snapshotData['destination'] as String?;
    _prix = castToType<int>(snapshotData['prix']);
    _whoCommandIt = snapshotData['who_command_it'] as DocumentReference?;
    _isCommandValidated = snapshotData['is_command_validated'] as bool?;
    _isCommandAccepted = snapshotData['is_command_accepted'] as bool?;
    _isCommandRefused = snapshotData['is_command_refused'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Commandes');

  static Stream<CommandesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommandesRecord.fromSnapshot(s));

  static Future<CommandesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommandesRecord.fromSnapshot(s));

  static CommandesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommandesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommandesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommandesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommandesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommandesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommandesRecordData({
  DateTime? date,
  DateTime? dateCreated,
  String? lieuPriseEnCharge,
  String? destination,
  int? prix,
  DocumentReference? whoCommandIt,
  bool? isCommandValidated,
  bool? isCommandAccepted,
  bool? isCommandRefused,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'date_created': dateCreated,
      'lieu_prise_en_charge': lieuPriseEnCharge,
      'destination': destination,
      'prix': prix,
      'who_command_it': whoCommandIt,
      'is_command_validated': isCommandValidated,
      'is_command_accepted': isCommandAccepted,
      'is_command_refused': isCommandRefused,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommandesRecordDocumentEquality implements Equality<CommandesRecord> {
  const CommandesRecordDocumentEquality();

  @override
  bool equals(CommandesRecord? e1, CommandesRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.lieuPriseEnCharge == e2?.lieuPriseEnCharge &&
        e1?.destination == e2?.destination &&
        e1?.prix == e2?.prix &&
        e1?.whoCommandIt == e2?.whoCommandIt &&
        e1?.isCommandValidated == e2?.isCommandValidated &&
        e1?.isCommandAccepted == e2?.isCommandAccepted &&
        e1?.isCommandRefused == e2?.isCommandRefused;
  }

  @override
  int hash(CommandesRecord? e) => const ListEquality().hash([
        e?.date,
        e?.dateCreated,
        e?.lieuPriseEnCharge,
        e?.destination,
        e?.prix,
        e?.whoCommandIt,
        e?.isCommandValidated,
        e?.isCommandAccepted,
        e?.isCommandRefused
      ]);

  @override
  bool isValidKey(Object? o) => o is CommandesRecord;
}
