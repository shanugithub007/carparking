// Favorite_Page/bloc/favorite_parkingspot_event.dart
part of 'favorite_parkingspot_bloc.dart';

@freezed
class FavoriteParkingspotEvent with _$FavoriteParkingspotEvent {
  const factory FavoriteParkingspotEvent.started() = _Started;
  const factory FavoriteParkingspotEvent.favparkingspotlist() = _Favparkingspotlist;
  
}