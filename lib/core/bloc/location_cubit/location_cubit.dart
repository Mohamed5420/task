import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/features/general/domain/entities/location_entity.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  void onLocationUpdated(LocationEntity model,{bool? change}){
    emit(LocationUpdated(model, change));
  }

}
