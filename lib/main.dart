import 'package:flutter/material.dart';
import 'package:larizzmanizz/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:larizzmanizz/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'larizzmanizz',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.brown,
          ).copyWith(secondary: Colors.brown[600]),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
