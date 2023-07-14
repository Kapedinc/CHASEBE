import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "DOB" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "ssn" field.
  String? _ssn;
  String get ssn => _ssn ?? '';
  bool hasSsn() => _ssn != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  bool hasZip() => _zip != null;

  // "id_front" field.
  String? _idFront;
  String get idFront => _idFront ?? '';
  bool hasIdFront() => _idFront != null;

  // "id_reverse" field.
  String? _idReverse;
  String get idReverse => _idReverse ?? '';
  bool hasIdReverse() => _idReverse != null;

  // "verifiedUser" field.
  bool? _verifiedUser;
  bool get verifiedUser => _verifiedUser ?? false;
  bool hasVerifiedUser() => _verifiedUser != null;

  // "verificationSent" field.
  bool? _verificationSent;
  bool get verificationSent => _verificationSent ?? false;
  bool hasVerificationSent() => _verificationSent != null;

  // "tax_id" field.
  String? _taxId;
  String get taxId => _taxId ?? '';
  bool hasTaxId() => _taxId != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dob = snapshotData['DOB'] as DateTime?;
    _ssn = snapshotData['ssn'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zip = snapshotData['zip'] as String?;
    _idFront = snapshotData['id_front'] as String?;
    _idReverse = snapshotData['id_reverse'] as String?;
    _verifiedUser = snapshotData['verifiedUser'] as bool?;
    _verificationSent = snapshotData['verificationSent'] as bool?;
    _taxId = snapshotData['tax_id'] as String?;
    _companyName = snapshotData['company_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? dob,
  String? ssn,
  String? firstName,
  String? lastName,
  String? address,
  String? city,
  String? state,
  String? zip,
  String? idFront,
  String? idReverse,
  bool? verifiedUser,
  bool? verificationSent,
  String? taxId,
  String? companyName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'DOB': dob,
      'ssn': ssn,
      'first_name': firstName,
      'last_name': lastName,
      'address': address,
      'city': city,
      'state': state,
      'zip': zip,
      'id_front': idFront,
      'id_reverse': idReverse,
      'verifiedUser': verifiedUser,
      'verificationSent': verificationSent,
      'tax_id': taxId,
      'company_name': companyName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dob == e2?.dob &&
        e1?.ssn == e2?.ssn &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zip == e2?.zip &&
        e1?.idFront == e2?.idFront &&
        e1?.idReverse == e2?.idReverse &&
        e1?.verifiedUser == e2?.verifiedUser &&
        e1?.verificationSent == e2?.verificationSent &&
        e1?.taxId == e2?.taxId &&
        e1?.companyName == e2?.companyName;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.dob,
        e?.ssn,
        e?.firstName,
        e?.lastName,
        e?.address,
        e?.city,
        e?.state,
        e?.zip,
        e?.idFront,
        e?.idReverse,
        e?.verifiedUser,
        e?.verificationSent,
        e?.taxId,
        e?.companyName
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
