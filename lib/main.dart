import 'package:BukuKasKu/constant/route_constants.dart';
import 'package:BukuKasKu/pages/Pengeluaran.dart';
import 'package:BukuKasKu/pages/Pemasukan.dart';
import 'package:BukuKasKu/pages/DetailCashFlowPage.dart';
import 'package:BukuKasKu/pages/HomePage.dart';
import 'package:BukuKasKu/pages/LoginPage.dart';
import 'package:BukuKasKu/pages/SettingsPage.dart';
import 'package:BukuKasKu/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => HomePage(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => AddExpenditurePage(),
  addIncomeRoute: (BuildContext context) => AddIncomePage(),
  detailCashFlowRoute: (BuildContext context) => DetailCashFlowPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Buku KasKu",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      routes: routes,
    );
  }
}
