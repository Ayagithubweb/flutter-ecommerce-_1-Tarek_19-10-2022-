import 'package:ecommerce_2023/controllers/cubit_auth/auth_cubit.dart';
import 'package:ecommerce_2023/controllers/cubit_auth/auth_states.dart';
import 'package:ecommerce_2023/firebase_options.dart';
import 'package:ecommerce_2023/utilities/router.dart';
import 'package:ecommerce_2023/utilities/routes.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:firebase_core_web/firebase_core_web.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child:BlocConsumer<AuthCubit, AuthState>(
         listener: (context, state) {},
        builder: (context, state) {
          return const  MaterialApp(
          title: 'Flutter Demo',
          // theme: lightTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          initialRoute: AppRoutes.authPageRoute //.landingPageRoute,
        );
        }
      ),
    );
  }
}

