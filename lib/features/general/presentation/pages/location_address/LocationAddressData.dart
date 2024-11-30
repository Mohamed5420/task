part of 'LocationAddressImports.dart';

class LocationAddressData {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final Completer<GoogleMapController> controller = Completer();
  late LocationEntity locationModel;
  final apiKey = "AIzaSyB9NkKL3vtiXZDLKLxAMwBrPNkTn8-YBYU";

  void getFirstLocation(BuildContext context) {
    final LocationEntity? location = context
        .read<LocationCubit>()
        .state
        .model;
    locationModel=location!;
    getLocationAddress( context);
  }

  void getLocationAddress( BuildContext context) async {
    LatLng loc = LatLng(locationModel.lat,locationModel.lng);

    String address = await GetIt.I<Utilities>().getAddress(loc, context);
    locationModel = LocationEntity(lat:loc.latitude,lng: loc.longitude, address:address);
    context.read<LocationCubit>().onLocationUpdated(locationModel);
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
    );
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  void changeLocation(BuildContext context) async {
    print("location ${locationModel.lat}");
    context.read<LocationCubit>().onLocationUpdated(locationModel, change: true);
    Navigator.pop(context);
  }
}
