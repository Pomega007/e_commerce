import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Accounts/LoginScreen.dart';

class HommeScreen extends StatefulWidget {
  const HommeScreen({Key? key}) : super(key: key);

  @override
  State<HommeScreen> createState() => _HommeScreenState();
}

class _HommeScreenState extends State<HommeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
  builder: (context, snapshot) {
  if (snapshot.connectionState == ConnectionState.waiting)
  return Center(child: CircularProgressIndicator());
  else if (snapshot.hasData){
  return LoginScreen();
  }else if (snapshot.hasError){
  return Center(child: Text('Something Went Wrong'));
  } else {
  return Scaffold(

  );
  }
  }
    ),
  );
}
