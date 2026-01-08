part of 'route_import_path.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RouteName.onboardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RouteName.signInScreen:
        return MaterialPageRoute(builder: (_) => SigninScreen());
      case RouteName.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignupScreens());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
