part of 'LocationAddressImports.dart';

@RoutePage()
class LocationAddress extends StatefulWidget {
  const LocationAddress({super.key});

  @override
  State<StatefulWidget> createState() => _LocationAddress();
}

class _LocationAddress extends State<LocationAddress>  {

  LocationAddressData controller = LocationAddressData();
  @override
  void initState() {
    controller.getFirstLocation(context);
    super.initState();
  }

  LocationAddressData locationAddressData = LocationAddressData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffold,
      appBar: AppBar(
        title: BlocBuilder<LocationCubit, LocationState>(
          builder: (context, state) {
            return Text(
              state.model?.address??'',
              style: AppTextStyle.s11_w500(color: context.colors.white),
            );
          },
        ),
        backgroundColor: context.colors.primary,
        automaticallyImplyLeading: true,
        centerTitle: true,
        flexibleSpace: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
        ),
      ),
      body: BuildGoogleMapView(locationAddressData: locationAddressData,),
      floatingActionButton: BuildSaveButton(locationAddressData: locationAddressData,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


}
