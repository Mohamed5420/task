part of 'convert_screen_widgets_imports.dart';

class BuildReplaceButton extends StatelessWidget {
  const BuildReplaceButton({super.key, required this.controller});
  final ConvertScreenController controller ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        controller.switchCountries();
      },
      child: Container(
        height: 50.h,
        width: 60.w,
        margin: EdgeInsets.symmetric(vertical: 4.h),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:  Colors.grey[800],
          boxShadow: [
            BoxShadow(
              color: Colors.grey[800]!.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]
        ),
        padding: EdgeInsets.all(5.w),
        alignment: Alignment.center,
        child: const Icon(Icons.swap_vert, color: Colors.white),
      ),
    );
  }
}
