abstract class AuthState{}

class AuthInitState extends AuthState{}
class AuthCopyWithState extends AuthState{}

class AuthupdateEmailState extends AuthState{}
class AuthupdatePasswordState extends AuthState{}

class AuthToggleState extends AuthState{}


class AuthLoginSuccessState extends AuthState{}
class AuthLoginErrorState extends AuthState{
  final String err;
  AuthLoginErrorState(this.err);
}
class AuthRegisterSuccessState extends AuthState{}
class AuthRegisterErrorState extends AuthState{
  final String err;
  AuthRegisterErrorState(this.err);
}
class AuthFrirebaseRegisterSuccessState extends AuthState{}
class AuthFrirebaseRegisterErrorState extends AuthState{
  final String err;
  AuthFrirebaseRegisterErrorState(this.err);
}
class AuthloadingState extends AuthState{}

