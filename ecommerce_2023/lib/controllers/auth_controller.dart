// import 'package:ecommerce_2023/services/auth_services.dart';
// import 'package:ecommerce_2023/utilities/constants.dart';
// import 'package:flutter/material.dart';

// class AuthController with ChangeNotifier {
//   //? What do I need to controll in it ....?
//   final AuthBase auth;
//   String email;
//   String password;
//   AuthFormType authFormType;
//   // final database = FirestoreDatabase('1234');

//   AuthController(
//       {required this.auth,
//       this.email = '',
//       this.password = '',
//       this.authFormType = AuthFormType.login});

// //*...........................................
//   void copyWith({
//     String? email,
//     String? password,
//     AuthFormType? authFormType,
//   }) {
//     this.email = email ?? this.email;
//     this.password = password ?? this.password;
//     this.authFormType = authFormType ?? this.authFormType;
//     notifyListeners();
//   }

//   void updateEmail(String email) => copyWith(email: email);
//   void updatePassword(String password) => copyWith(password: password);
// //*...........................................
//   void toggleAuthFormType() {
//     final formType = authFormType == AuthFormType.login
//         ? AuthFormType.register
//         : AuthFormType.login;
//     copyWith(authFormType: formType);
//     notifyListeners();
//   }

//   Future<void> submit() async {
//     try {
//     if (authFormType == AuthFormType.login) {
//       await auth.loginWithEmailAndPassword(email, password);
//     } else{
//      final user= await auth.signUpWithEmailAndPassword(email, password);
//       // await database.setUserData(UserData(uid: user?.uid??docmentIdFormLocationData(),email: email));
//     }
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
// // AuthController copyWith({
//   //   AuthBase? auth,
//   //   String? email,
//   //   String? password,
//   //   AuthFormType? authFormType,
//   // }) {
//   //   return AuthController(
//   //       auth: auth ?? this.auth,
//   //       email: email ?? this.email,
//   //       password: password ?? this.password,
//   //       authFormType: authFormType ?? this.authFormType);
//   // }