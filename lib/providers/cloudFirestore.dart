import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'firestorePath.dart';
import 'models/universitiesRef.dart';

class CloudFirestoreService with ChangeNotifier {
  //TODO: Add CloudFirestore Functions
  // CloudFirestoreService({@required this.uid}) : assert(uid != null);
  // final String uid;
  final Firestore firestore = Firestore.instance;

  /// Sets the posts fields
  // Future<bool> setPosts(PostsReference postsReference) async {
  //   try {
  //     await firestore
  //         .collection(
  //           FirestorePath.posts(),
  //         )
  //         .document()
  //         .setData(
  //           postsReference.toMap(),
  //         );
  //     return true;
  //   } on PlatformException catch (error) {
  //     print('Posts Firestore => $error');
  //     return false;
  //   }
  // }

  /// Get all the universities of the currentUser
  Stream<List<UniversitiesRef>> getUniversities() {
    try {
      var snaps = firestore
          .collection(
            FirestorePath.universities(),
          )
          .snapshots();

      return snaps.map(
        (snapshot) => snapshot.documents
            .map(
              (doc) => UniversitiesRef.fromSnap(
                doc,
              ),
            )
            .toList(),
      );
    } catch (error) {
      print('Data Error => ' + error);
      return Stream.empty();
    }
  }
}
