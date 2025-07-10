import 'package:get/get.dart';

// Route Names
import 'package:better_u_news/app/routes/route_names.dart';

// Authentication Screens
import 'package:better_u_news/view/authentication/splash_screen.dart';
import 'package:better_u_news/view/authentication/welcome_screen.dart';
import 'package:better_u_news/view/authentication/signup_screen.dart';
import 'package:better_u_news/view/authentication/LoginFlow/login_screen.dart';
import 'package:better_u_news/view/authentication/LoginFlow/forgotpassword_screen.dart';
import 'package:better_u_news/view/authentication/LoginFlow/resetpassword_screen.dart';
import 'package:better_u_news/view/authentication/verifyotp_screen.dart';
import 'package:better_u_news/view/authentication/choosestate_screen.dart';
import 'package:better_u_news/view/authentication/birthdate_screen.dart';
import 'package:better_u_news/view/authentication/miraonboarding_screen.dart';
import 'package:better_u_news/view/authentication/chathistoryoverlay_screen.dart';

// Dashboard Screen
import 'package:better_u_news/view/dashboard/tabbar_screen.dart';

class AppRoutes {
  static List<GetPage> appRoutes() => [
    // Splash
    GetPage(
      name: RoutesName.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
    ),

    // Welcome
    GetPage(
      name: RoutesName.welcomeScreen,
      page: () => WelcomeScreen(),
      transition: Transition.fadeIn,
    ),

    // Signup & Login
    GetPage(
      name: RoutesName.signupScreen,
      page: () => SignupScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.loginScreen,
      page: () => LoginScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.forgotPasswordScreen,
      page: () => ForgotpasswordScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.resetPasswordScreen,
      page: () => ResetpasswordScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.verifyOTPScreen,
      page: () => VerifyotpScreen(),
      transition: Transition.fadeIn,
    ),

    // Onboarding & Profile
    GetPage(
      name: RoutesName.chooseStateScreen,
      page: () => ChoosestateScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.birthDateScreen,
      page: () => BirthdateScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.miraOnboardingScreen,
      page: () => MiraonboardingScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.chatHistoryOverlayScreen,
      page: () => ChathistoryoverlayScreen(),
      transition: Transition.fadeIn,
    ),

    // Main Dashboard
    GetPage(
      name: RoutesName.tabBarScreen,
      page: () => TabbarScreen(),
      transition: Transition.fadeIn,
    ),
  ];
}
