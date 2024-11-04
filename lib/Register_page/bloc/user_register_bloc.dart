// Register_page/bloc/user_register_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:car_parking_app/Register_page/model/user_reg_model.dart';
import 'package:car_parking_app/Register_page/services/user_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';
part 'user_register_bloc.freezed.dart';

class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc() : super(_Initial()) {
    on<UserRegisterEvent>((event, emit) async {
      try {
        emit(const UserRegisterState.loading());
// carwash
        if (event is _UserRegi) {
          final response = await customerService(
           email: event.email,name: event.name,password: event.password,phnnumber: event.phnnumber,usernames: event.usernames,
          );
          emit(UserRegisterState.success(response: response));
        }
        
      } catch (e) {
        emit(UserRegisterState.error(error: e.toString()));
      }
    });
  }
}
