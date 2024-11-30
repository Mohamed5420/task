import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/bloc/cart_cubit/currency_cubit.dart';
import 'package:task/core/bloc/countries_cubit/countries_cubit.dart';
import 'package:task/core/bloc/location_cubit/location_cubit.dart';
import 'package:task/core/constants/constants.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/features/general/domain/entities/location_entity.dart';
import 'package:task/features/general/presentation/pages/location_address/LocationAddressImports.dart';
import 'package:geocoder2/geocoder2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:collection/collection.dart';

@lazySingleton
class Utilities {
  String convertDigitsToLatin(String s) {
    var sb = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }

  Future<LocationData?> getCurrentLocation(BuildContext context) async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData loc;
    final Location location = Location();

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    loc = await location.getLocation();
    return loc;
  }

  void navigateToMapWithDirection({required String lat, required String lng}) async {
    var context = getIt<GlobalContext>().context();
    if (lat == "0") return;
    try {
      final coords = Coords(double.parse(lat), double.parse(lng));
      const title = "Destination";
      final availableMaps = await MapLauncher.installedMaps;
      final googleMaps = availableMaps.where((map) => map.mapName == 'Google Maps').toList();
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Wrap(
                children: <Widget>[
                  for (var map in googleMaps)
                    ListTile(
                      onTap: () => map.showMarker(
                        coords: coords,
                        title: title,
                      ),
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {}
  }


  void navigateToMapWithDirections({required String originLat, required String originLng,required String destinationLat, required String destinationLng}) async {
    var context = getIt<GlobalContext>().context();
    if (destinationLat == "0") return;
    try {
      final destination = Coords(double.parse(destinationLat), double.parse(destinationLng));
      final origin = Coords(double.parse(originLat), double.parse(originLng));
      const title = "Destination";
      final availableMaps = await MapLauncher.installedMaps;
      final googleMaps = availableMaps.where((map) => map.mapName == 'Google Maps').toList();
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Wrap(
                children: <Widget>[
                  for (var map in googleMaps)
                    ListTile(
                      onTap: () => map.showDirections(destination: destination,
                        origin: origin
                      ),
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {}
  }


  Future<String> getAddress(LatLng latLng, BuildContext context) async {
    GeoData fetchGeocoder = await Geocoder2.getDataFromCoordinates(
        latitude: latLng.latitude,
        longitude: latLng.longitude,
        googleMapApiKey: "AIzaSyB9NkKL3vtiXZDLKLxAMwBrPNkTn8-YBYU");
    return "${fetchGeocoder.country},${fetchGeocoder.city},${fetchGeocoder.state},${fetchGeocoder.streetNumber}".replaceFirst(",,", "");
  }

  void navigateToLocationAddress(BuildContext context, LocationCubit locCubit) async {
    FocusScope.of(context).requestFocus(FocusNode());
    var current = await getCurrentLocation(context);
    LocationEntity? locationModel = locCubit.state.model;
    if (current != null) {
      locationModel = LocationEntity(lat: current.latitude ?? 0, lng: current.longitude ?? 0);
    }
    double lat = locationModel?.lat ?? 0.0;
    double lng = locationModel?.lng ?? 0.0;
    String address = await getAddress(LatLng(lat, lng), context);
    locationModel?.address = address;
    locCubit.onLocationUpdated(locationModel!);
    EasyLoading.dismiss();
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (cxt) => BlocProvider.value(
          value: locCubit,
          child: const LocationAddress(),
        ),
      ),
    );
  }

  void navigateToAddAddress(BuildContext context, LocationCubit locCubit) async {
    FocusScope.of(context).requestFocus(FocusNode());
    var current = await getCurrentLocation(context);
    LocationEntity? locationModel = locCubit.state.model;
    if (context.mounted) {
      locationModel = LocationEntity(lat: current?.latitude ?? 24.774265, lng: current?.longitude ?? 46.738586);
    }
    double lat = locationModel?.lat ?? 24.774265;
    double lng = locationModel?.lng ?? 46.738586;
    String address = await getAddress(LatLng(lat, lng), context);
    locationModel?.address = address;
    locCubit.onLocationUpdated(locationModel!);
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (cxt) => BlocProvider.value(
          value: locCubit,
          // child: const AddAddress(),
        ),
      ),
    );
  }

  Future<File?> getImageFile(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    if (result != null) {
      File imageFile = File(result.files.single.path!);
      return imageFile;
    }
    return null;
  }


  String formatNumber(num num) {
    if (num >= 1000000000) {
      return '${(num / 1000000000).toStringAsFixed(1)}B';
    } else if (num >= 1000000) {
      return '${(num / 1000000).toStringAsFixed(1)}M';
    } else if (num >= 1000) {
      return '${(num / 1000).toStringAsFixed(1)}K';
    } else {
      return num.toStringAsFixed(1);
    }
  }


  num getAmountByFxRate(num? amount, String? firstCurrency, String? secondCurrency) {
    if (amount == 0 || amount == null || firstCurrency == "" || secondCurrency == "" || firstCurrency == null || secondCurrency == null) return 0;
    if (firstCurrency == secondCurrency || secondCurrency.isEmpty || (firstCurrency == 'Constants.undefined' || secondCurrency == 'Constants.undefined')) return amount;
    var context = getIt<GlobalContext>().context();
    var rates = context.read<CurrencyCubit>().state.model;
    if (firstCurrency == Constants.kwdCurrency) {
      num rate = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == secondCurrency.toUpperCase())?.value ?? 0;
      return truncateToDecimalPlaces((amount * rate), getDCPeByCurrency(secondCurrency));
    }
    if (secondCurrency == Constants.kwdCurrency) {
      num rate = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == firstCurrency.toUpperCase())?.value ?? 0;
      return truncateToDecimalPlaces((amount / rate), getDCPeByCurrency(secondCurrency));
    }
    if (firstCurrency != Constants.kwdCurrency && secondCurrency != Constants.kwdCurrency) {
      num rateFirstCurrency = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == firstCurrency.toUpperCase())?.value ?? 0;
      num rateSecondCurrency = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == secondCurrency.toUpperCase())?.value ?? 0;
      return truncateToDecimalPlaces((amount * (rateSecondCurrency / rateFirstCurrency)), getDCPeByCurrency(secondCurrency));
    }
    return truncateToDecimalPlaces(amount, getDCPeByCurrency(secondCurrency));
    }

  num truncateToDecimalPlaces(num amount, int decimalDigits) {
    return (amount * pow(10, decimalDigits)).truncate() / pow(10, decimalDigits);
    }

  int getDCPeByCurrency(String? cashCurrency) {
    var context = getIt<GlobalContext>().context();
    var countries = context.read<CountriesCubit>().state.list;
    if (cashCurrency == Constants.kwdCurrency) return 3;
    if (cashCurrency == Constants.usdCurrency) return 2;
    // if (cashCurrency != null && cashCurrency != "") return countries?.firstWhereOrNull((element) => element.currencyId.toUpperCase() == cashCurrency)?.decimalPlace ?? 3;
    return 3;
    }


}



