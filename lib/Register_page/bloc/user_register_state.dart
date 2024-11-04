// Register_page/bloc/user_register_state.dart
part of 'user_register_bloc.dart';

@freezed
class UserRegisterState with _$UserRegisterState {
  const factory UserRegisterState.initial() = _Initial;
  const factory UserRegisterState.loading() = _Loading;
  const factory UserRegisterState.error({required String error}) = _Error;
  const factory UserRegisterState.success({required UserRegModel response}) = _Success;
  
  
}