// Login_Page/bloc/user_login_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:car_parking_app/Login_Page/model/login_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../services/login_service.dart';

part 'user_login_event.dart';
part 'user_login_state.dart';
part 'user_login_bloc.freezed.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  UserLoginBloc() : super(_Initial()) {
    on<UserLoginEvent>((event, emit) async{
      try {
        emit(const UserLoginState.loading());
// carwash
        if (event is _UserLogin) {
         final response = await LoginService(
           password: event.password,usernames: event.usernames,
          );
          emit(UserLoginState.success(response: response));
        }
        
      } catch (e) {
        emit(UserLoginState.error(error: e.toString()));
      }
    });
  }
}
