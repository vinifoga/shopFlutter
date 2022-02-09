import 'package:flutter/material.dart';
import 'package:shop/screens/loading.dart';
import 'package:shop/screens/something_went_wrong.dart';
import 'package:shop/tabs/home_tab.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseInitialize extends StatelessWidget {
  const FirebaseInitialize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return SomethingWentWrong();
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return const HomeTab();
          }

          return const Loading();
        });
  }
}
