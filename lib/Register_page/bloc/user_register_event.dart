// Register_page/bloc/user_register_event.dart
part of 'user_register_bloc.dart';

@freezed
class UserRegisterEvent with _$UserRegisterEvent {
  const factory UserRegisterEvent.started() = _Started;
  const factory UserRegisterEvent.userRegi({
    required String name,
    required String email,
    required String phnnumber,
    required String password,
    required String usernames,
  }) = _UserRegi;
}
