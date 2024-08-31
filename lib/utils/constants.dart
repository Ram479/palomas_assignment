import 'package:flutter/material.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';
//
// class Constants {
//   late Future<Isar> _isar;
//
//   static final Constants _instance = Constants._();
//   Constants._() {
//     _isar = openIsar();
//
//   factory Constants() {
//     return _instance;
//   }
//
//   Future<Isar> get isar {
//     return _isar;
//   }
//
//   // Future<Isar> openIsar() async {
//   //   if (Isar.instanceNames.isEmpty) {
//   //     final directory = await getApplicationDocumentsDirectory();
//   //
//   //     return await Isar.open(
//   //       [
//   //       ],
//   //       name: 'HCM',
//   //       inspector: true,
//   //       directory: directory.path,
//   //     );
//   //   } else {
//   //     return await Future.value(Isar.getInstance());
//   //   }
//   // }
// }
