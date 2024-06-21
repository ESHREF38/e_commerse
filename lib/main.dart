import 'package:e_commerse/screens/payment_method_screen.dart';
import 'package:e_commerse/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommerce Sopping ",
      theme: ThemeData(
        primaryColor: Color(0xFFDB3022),
      ),
      home:PaymentMethodScreen(),
    );
  }
}
