part of 'register_imports.dart';

class RegisterDate {
  double? lng;
  double? lat;
  String? address;
  final BaseBloc<bool> passwordCubit = BaseBloc(false);
  final BaseBloc<bool> confirmPasswordCubit = BaseBloc(false);
  final BaseBloc<bool> termCubit = BaseBloc(false);
  final BaseBloc<File?> imageCubit = BaseBloc(null);
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController additionalPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  final LocationCubit locCubit = LocationCubit();

  Future<void> getAddress(BuildContext context) async {
    LocationEntity? locationEntity = context.read<LocationCubit>().state.model;
    lng = locationEntity!.lng;
    lat = locationEntity.lat;
    address = locationEntity.address;
    addressController.text = address!;
  }

  Future<void> _determinePosition(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // CustomToast.showSnakeBar(tr("enableLocation"));

      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {

        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.

      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position position = await Geolocator.getCurrentPosition();
    double longitude = position.longitude;
    double latitude = position.latitude;
    if (context.mounted) {
      context.read<LocationCubit>().onLocationUpdated(
          LocationEntity(lat: latitude, lng: longitude));
    }
  }

}
