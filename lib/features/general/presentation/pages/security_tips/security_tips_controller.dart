part of 'security_tips_imports.dart';

class SecurityTipsController{

  BaseBloc<List<TipsEntity>> tipsCubit = BaseBloc([]);

  void initTips(){
    tipsCubit.successState(tipsList);
  }

  void onSelectItem(int index,List<TipsEntity> list){
    if(list[index].isSelected==true){
      list[index].isSelected=false;
      tipsCubit.successState(list);
    }else{
      list.map((e) => e.isSelected=false).toList();
      list[index].isSelected=true;
      tipsCubit.successState(list);
    }
  }


  List<TipsEntity> tipsList = [
    TipsEntity(
      question: 'Update the App Regularly',
      answer: 'Keep the Kamco Invest mobile app updated to the latest version. Developers often release updates that include security patches and improvements.',
    ),
    TipsEntity(
      question: 'Enable App Lock and Biometric Authentication',
      answer: 'Use app lock or biometric authentication to secure your app from unauthorized access.',
    ),
    TipsEntity(
      question: 'Beware of Phishing Attempts',
      answer: 'Be cautious of emails, messages, or links that request personal or account information.',
    ),
    TipsEntity(
      question: 'Secure Your Device',
      answer: 'Use strong passwords, screen locks, and encryption to protect your device from unauthorized access.',
    ),
    TipsEntity(
      question: 'Review Account Activity Regularly',
      answer: 'Check your account activity frequently to detect any unauthorized transactions.',
    ),
    TipsEntity(
      question: 'Logout After Each Session',
      answer: 'Always log out from the app after you are done using it, especially on shared devices.',
    ),
    TipsEntity(
      question: 'Educate Yourself on Security Features',
      answer: 'Learn about the security features available on the app to protect your account and personal information.',
    ),
    TipsEntity(
      question: 'Keep Personal Information Secure',
      answer: 'Do not share your personal information or login credentials with anyone.',
    ),
    TipsEntity(
      question: 'Install Security Software',
      answer: 'Use antivirus and security software to protect your device from malware and other security threats.',
    ),
    TipsEntity(
      question: 'Be Cautious with Public Devices',
      answer: 'Avoid logging into your account on public or shared devices. If you must, ensure you log out and clear any saved information.',
    ),
    TipsEntity(
      question: 'Monitor Notifications',
      answer: 'Keep an eye on notifications from the app for any unusual activity or alerts.',
    ),
  ];

}