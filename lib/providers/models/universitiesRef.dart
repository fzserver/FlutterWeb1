import 'package:cloud_firestore/cloud_firestore.dart';

class UniversitiesRef {
  UniversitiesRef(
    this.name,
    this.uid,
    this.tld,
    this.tldlen,
    this.cityid,
    this.stateid,
    this.countryid,
    this.createdAt,
    this.updatedAt,
  );
  final String name, tld, cityid, countryid, stateid;
  final int tldlen;
  final DateTime createdAt, updatedAt;
  final DocumentReference uid;
  Timestamp createdAtSnap, updatedAtSnap;

  factory UniversitiesRef.fromMap(Map<String, dynamic> data) =>
      (data == null ||
          data['name'] == null ||
          data['uid'] == null ||
          data['tld'] == null ||
          data['tldlen'] == null ||
          data['cityid'] == null ||
          data['stateid'] == null ||
          data['countryid'] == null ||
          data['createdAt'] == null ||
          data['updatedAt'] == null) ??
      UniversitiesRef(
        data['name'],
        data['uid'],
        data['tld'],
        data['tldlen'],
        data['cityid'],
        data['countryid'],
        data['stateid'],
        data['createdAt'],
        data['updatedAt'],
      );

  factory UniversitiesRef.fromSnap(DocumentSnapshot snapshot) =>
      UniversitiesRef(
        snapshot.data['Name'],
        snapshot.data['uid'],
        snapshot.data['TLD'],
        snapshot.data['TLDLEN'],
        snapshot.data['CityID'],
        snapshot.data['StateID'],
        snapshot.data['CountryID'],
        snapshot.data['createdAtSnap'],
        snapshot.data['UpdatedAtSnap'],
      );

  Map<String, dynamic> toMap() => {
        'uid': uid,
        'Name': name,
        'TLD': tld,
        'TLDLEN': tldlen,
        'CityID': cityid,
        'StateID': stateid,
        'CountryID': countryid,
        'CreatedAt': createdAt,
        'UpdatedAt': updatedAt,
      };
}
