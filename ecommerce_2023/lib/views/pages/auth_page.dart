import 'package:ecommerce_2023/controllers/cubit_auth/auth_cubit.dart';
import 'package:ecommerce_2023/controllers/cubit_auth/auth_states.dart';
import 'package:ecommerce_2023/utilities/constants.dart';
import 'package:ecommerce_2023/views/widgets/main_btn.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthPage extends StatelessWidget {
  AuthPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // final _nameController = TextEditingController();
  // var _authType = AuthFormType.login;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    //! final auth = Provider.of<AuthBase>(context);
    //! Future<void> submit_(AuthController model) async {
    //   try {
    //     await model.submit();
    //      AwesomeSnackbarContent(title: 'Success..!', message: "Success", contentType:ContentType.success);
    //     // if (!mounted) return;
    //     // ignore: use_build_context_synchronously
    //     // Navigator.of(context).pushNamed(AppRoutes.bottomNavBarRoute);
    //   } catch (ex) {
    //      AwesomeSnackbarContent(title: 'Error..!', message: "$ex", contentType:ContentType.failure);
                
    //   }
    // }

    // return Consumer<AuthController>(
    //   builder: (_, model, __) {
     return BlocConsumer<AuthCubit, AuthState>(
         listener: (context, state) {},
        builder: (context, state) {
          var cubit =AuthCubit.get(context);
          return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 32),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                           cubit.authFormType == AuthFormType.login ? "Login": "Sign Up",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(height: 100),                      
                        TextFormField(
                          onChanged: (value) {cubit.updateEmail(value.toString());} ,
                          controller: _emailController,
                          validator: (val) => val!.isEmpty ? "please enter your email" : null,
                          decoration: const InputDecoration(
                            labelText: "Email",
                            hintText: "Enter your Email",
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextFormField(
                          onChanged:(value){cubit.updatePassword(value.toString());},
                          controller: _passwordController,
                          validator: (val) => val!.isEmpty ? "please enter your password" : null,
                          decoration: const InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your Password",
                          ),
                        ),
                        const SizedBox(height: 16),
                        if ( cubit.authFormType == AuthFormType.login)
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              child: const Text("Forget your password ?"),
                              onTap: () {},
                            ),
                          ),
                        const SizedBox(height: 24),
                        MainBtn(
                            text:  cubit.authFormType == AuthFormType.login? "Login": "Sign Up",
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                // debugPrint("Authenticated!");debugPrint(_emailController.text);debugPrint(_passwordController.text);
                                 debugPrint('email:: ${cubit.email}');
                                 debugPrint('password:: ${cubit.password}');
                                cubit.submit();
                                // Navigator.of(context).pushNamed(AppRoutes.bottomNavBarRoute);
                                //! submit_(cubit);
                              }
                            }),
                        const SizedBox(height: 16),

                        Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            child: Text(
                               cubit.authFormType == AuthFormType.login? "Don't have an account? Register": 
                                "Alrady have account? Login"),
                            onTap: () {
                              // _formKey.currentState!.reset();
                              cubit.toggleAuthFormType();
                            },
                          ),
                        ),
                        SizedBox(height: size.height * 0.14),

                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              cubit.authFormType == AuthFormType.login? "Or login with social account": 
                                  "Or register with social account",
                              style: Theme.of(context).textTheme.subtitle1,
                            )),
                        const SizedBox(height: 16),
                        
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                // ! ----
                                child:SvgPicture.asset('assets/facebook-svgrepo-com.svg',width: 10,),
                                //  const Icon(Icons.add),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child:SvgPicture.asset('assets/google-svgrepo-com.svg',width: 10,),
                                // const Icon(Icons.add),
                              ),
                            ]),
                      ]),
                ),
              ),
            ),
          ),
        );
        });
         
      // },
    // );
  }
}
