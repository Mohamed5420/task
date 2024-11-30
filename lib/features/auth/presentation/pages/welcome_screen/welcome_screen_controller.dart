part of 'welcome_screen_imports.dart';

class WelcomePageController{

  final SwiperController swiperController = SwiperController();
  final BaseBloc<List<WelcomeEntity>> pagesBloc =BaseBloc([]);
  final ObsValue<int> pageObs =ObsValue.withInit(0);

  void goToNextPage(BuildContext context) {
    if(pageObs.getValue()!=2){
      swiperController.next(
        animation: true,
      );
    }else{
      AutoRouter.of(context).push(const Login());
    }
  }


  void navigateToLogin(BuildContext context){
    if(pageObs.getValue()!=2){
      AutoRouter.of(context).push(const Login());
    }else{
      AutoRouter.of(context).push(const Home());

    }
  }

  void initData(){
    pagesBloc.successState(pages);
  }

  List<WelcomeEntity> pages = [
    WelcomeEntity(
      index: 0,
      title:'Order everything around',
      desc:'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type speci',
      image:Res.onBoarding1,
    ),
    WelcomeEntity(
      index: 1,
      title:'Delivery or Pick up ?!',
      desc:'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type speci',
      image:Res.onBoarding2,
    ),
    WelcomeEntity(
      index: 2,
      title:'Buy everything you need ',
      desc:'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type speci',
      image:Res.onBoarding1,
    ),
  ];
}