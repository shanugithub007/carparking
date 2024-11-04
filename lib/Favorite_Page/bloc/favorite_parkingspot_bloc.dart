// Favorite_Page/bloc/favorite_parkingspot_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/fav_parking_spot_model.dart';
import '../services/fav_parking_spot.dart';

part 'favorite_parkingspot_event.dart';
part 'favorite_parkingspot_state.dart';
part 'favorite_parkingspot_bloc.freezed.dart';

class FavoriteParkingspotBloc extends Bloc<FavoriteParkingspotEvent, FavoriteParkingspotState> {
  FavoriteParkingspotBloc() : super(_Initial()) {
    on<FavoriteParkingspotEvent>((event, emit) async{
      try {
        emit(const FavoriteParkingspotState.loading());
// carwash
        if (event is _Favparkingspotlist) {
          final response = await FavPageService();
          emit(FavoriteParkingspotState.success(response: response));
        }
      } catch (e) {
       emit(FavoriteParkingspotState.error(error: e.toString()));
      }
    });
  }
}