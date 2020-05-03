import 'package:flutter/material.dart';
import 'package:flutterweb/providers/cloudFirestore.dart';
import 'package:flutterweb/providers/models/universitiesRef.dart';
import 'package:provider/provider.dart';

Widget showUniversities({BuildContext context}) {
  final universitiesDB = Provider.of<CloudFirestoreService>(context);
  return StreamBuilder<List<UniversitiesRef>>(
    stream: universitiesDB.getUniversities(),
    builder: (context, snapshot) {
      if (snapshot.hasError)
        return Text(
          'Error: ${snapshot.error}',
        );
      switch (snapshot.connectionState) {
        case ConnectionState.waiting:
          return Center(
            child: Text(
              'Loading...',
            ),
          );
        default:
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) => Divider(
              color: Colors.deepOrange,
              thickness: 1.0,
              indent: 12.0,
              endIndent: 12.0,
            ),
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  snapshot.data[index].name,
                ),
                subtitle: Text(
                    'TLD => ${snapshot.data[index].tld}   TLD LENGTH => ${snapshot.data[index].tldlen}   State ID => ${snapshot.data[index].stateid}   City ID => ${snapshot.data[index].cityid}   CountryID => ${snapshot.data[index].countryid}'),
                // isThreeLine: true,
              );
            },
          );
      }
    },
  );
}
