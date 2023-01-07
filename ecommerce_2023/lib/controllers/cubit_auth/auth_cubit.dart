import 'package:ecommerce_2023/controllers/cubit_auth/auth_states.dart';
import 'package:ecommerce_2023/models/user_model.dart';
import 'package:ecommerce_2023/services/auth_services.dart';
import 'package:ecommerce_2023/services/firestore_services.dart';
import 'package:ecommerce_2023/utilities/constants.dart';
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitState());
  static AuthCubit get(context) => BlocProvider.of(context);
  final auth = Auth.instance;
  final database = FirestoreServices.instance;

  String email = '';
  String password = '';
  AuthFormType authFormType = AuthFormType.login;

  void updateEmail(String emailVal) {
    email = emailVal;
    emit(AuthupdateEmailState());
  }

  void updatePassword(String passwordVal) {
    password = passwordVal;
    emit(AuthupdatePasswordState());
  }

  void toggleAuthFormType() {
    final formType = authFormType == AuthFormType.login
        ? AuthFormType.register
        : AuthFormType.login;
    authFormType = formType;
    emit(AuthToggleState());
  }

  Future<void> submit() async {
    emit(AuthloadingState());
    if (authFormType == AuthFormType.login) {
      await auth.loginWithEmailAndPassword(email, password).then((value) {
        emit(AuthLoginSuccessState());
        debugPrint("emit :: AuthLoginSuccessState()");
      }).catchError((err) {
        emit(AuthLoginErrorState(err));
        debugPrint("emit :: AuthLoginErrorState() -> $err");
      });
    } else {
      await auth.signUpWithEmailAndPassword(email, password).then((value) {
       database.setData(path: 'users/', data: UserModel(uid:docmentIdFormLocationData(),email:email ).toMap()).then((value){
        emit(AuthRegisterSuccessState());
        debugPrint("emit :: AuthRegisterSuccessState()");
       }).catchError((err){
        emit(AuthFrirebaseRegisterSuccessState());
        debugPrint("emit :: AuthFrirebaseRegisterErrorState() -> $err");
       });

        emit(AuthFrirebaseRegisterSuccessState());
        debugPrint("emit :: AuthFrirebaseRegisterSuccessState()");

      }).catchError((err) {
        emit(AuthRegisterSuccessState());
        debugPrint("emit :: AuthRegisterErrorState() -> $err");
      });
    }
    //
    //   await database.setData(path: 'users/', data: UserModel(uid: user?.uid??docmentIdFormLocationData(),email:email ).toMap());
    //   // .setData(data: );
    // }.then((){})
  }

  /*List<dynamic> science = [];
  void getScienceData() {
    emit(NewsGetSciencesloadingState());
    if (science.isEmpty) {
      DioHelper.getData(url: "v2/top-headlines", query: {
        "country": 'eg',
        "category": "science",
        "apiKey": "76b63b4f3ce04549876892af8b6a4ded"
      }).then((value) {
        debugPrint('Number articles at (science):: ${value.data['articles'].length.toString()}'); //value.data
        science = value.data['articles'];
        emit(NewsGetSciencesSuccessState());
      }).catchError((err) {
        debugPrint("Error..! ${err.toString()}");
        emit(NewsGetSciencesErrorState(err.toString()));
      });
    } else {
      emit(NewsGetSciencesSuccessState());
    }
  }*/

}
