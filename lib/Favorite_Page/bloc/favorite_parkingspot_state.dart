// Favorite_Page/bloc/favorite_parkingspot_state.dart
part of 'favorite_parkingspot_bloc.dart';

@freezed
class FavoriteParkingspotState with _$FavoriteParkingspotState {
  const factory FavoriteParkingspotState.initial() = _Initial;
  const factory FavoriteParkingspotState.loading() = _Loading;
  const factory FavoriteParkingspotState.error({required String error}) = _Error;
  const factory FavoriteParkingspotState.success({required List<FavParkingSpot> response}) = _Success;
}