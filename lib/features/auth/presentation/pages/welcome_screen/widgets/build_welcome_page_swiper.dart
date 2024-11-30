part of 'welcome_screen_widgets_imports.dart';

class BuildWelcomePageSwiper extends StatelessWidget {
  const BuildWelcomePageSwiper({super.key, required this.controller});
  final WelcomePageController controller;

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
        bloc: controller.pagesBloc,
        onSuccessWidget: (data) {
          return Swiper(
            itemCount: data.length,
            onIndexChanged: (i) {
              controller.pageObs.setValue(i);
            },
            controller: controller.swiperController,
            outer: true,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BuildWelcomePageImage(image: data[index].image??''),
                  BuildWelcomePageTitle(title: data[index].title??''),
                  BuildWelcomePageDesc(desc: data[index].desc??''),
                ],
              ),
            ),
            pagination: SwiperPagination(
                builder: SwiperCustomPagination(builder: (context, config) {
                  return DotSwiperPaginationBuilder(color: context.colors.greyWhite, activeColor: context.colors.primary, size: 10.0, activeSize: 10.0)
                      .build(context, config);
                })),
          );
        });
  }
}
