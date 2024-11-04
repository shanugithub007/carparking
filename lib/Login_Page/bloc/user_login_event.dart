// Login_Page/bloc/user_login_event.dart
part of 'user_login_bloc.dart';

@freezed
class UserLoginEvent with _$UserLoginEvent {
  const factory UserLoginEvent.started() = _Started;
  const factory UserLoginEvent.userLogin({required String password, required String usernames}) = _UserLogin;
  
}