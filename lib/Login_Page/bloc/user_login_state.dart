// Login_Page/bloc/user_login_state.dart
part of 'user_login_bloc.dart';

@freezed
class UserLoginState with _$UserLoginState {
  const factory UserLoginState.initial() = _Initial;
  const factory UserLoginState.loading() = _Loading;
  const factory UserLoginState.error({required String error}) = _Error;
  const factory UserLoginState.success({required LoginModel response}) = Success;
}
