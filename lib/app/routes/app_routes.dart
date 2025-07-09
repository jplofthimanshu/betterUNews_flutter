import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/view/authentication/LoginFlow/forgotpassword_screen.dart';
import 'package:better_u_news/view/authentication/LoginFlow/login_screen.dart';
import 'package:better_u_news/view/authentication/birthdate_screen.dart';
import 'package:better_u_news/view/authentication/chathistoryoverlay_screen.dart';
import 'package:better_u_news/view/authentication/choosestate_screen.dart';
import 'package:better_u_news/view/authentication/miraonboarding_screen.dart';
import 'package:better_u_news/view/authentication/signup_screen.dart';
import 'package:better_u_news/view/authentication/splash_screen.dart';
import 'package:better_u_news/view/authentication/verifyotp_screen.dart';
import 'package:better_u_news/view/authentication/welcome_screen.dart';
import 'package:get/get.dart';

class AppRoutes {

  static appRoutes () => [
    GetPage(
        name: RoutesName.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.welcomeScreen,
        page: () => WelcomeScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.signupScreen,
        page: () => SignupScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.verifyOTPScreen,
        page: () => VerifyotpScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.chooseStateScreen,
        page: () => ChoosestateScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.birthDateScreen,
        page: () => BirthdateScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.miraOnboardingScreen,
        page: () => MiraonboardingScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.chatHistoryOverlayScreen,
        page: () => ChathistoryoverlayScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.loginScreen,
        page: () => LoginScreen(),
        transition: Transition.fadeIn
    ),

    GetPage(
        name: RoutesName.forgotPasswordScreen,
        page: () => ForgotpasswordScreen(),
        transition: Transition.fadeIn
    ),
  ];

}