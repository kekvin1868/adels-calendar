import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = '/';
  
  // App Start Up
  static const String splashScreen ='/splash';
  static const String loginScreen = '/login';
  
  // Sign Up
  static const String signUpScreen = '/sign-up';
  
  // Home
  static const String homeScreen = '/home';
  
  // App Features
  static const String moodScreen = '/mood';
  static const String calendarScreen = '/calendar';
  static const String toDoListScreen = '/todo';
  
  // Profile
  static const String profileScreen = '/profile';
  static const String settingsScreen = '/settings';
  static const String moodCounterScreen = '/mood-counter';
  
  // Navigation
  static const String appNavigationScreen = '/nav';
  
  static Map<String, WidgetBuilder> get routes => {
    initialRoute: SplashScreen.builder,
    // splashScreen: SplashScreen.builder,
    // loginScreen: LoginScreen.builder,
    // signUpScreen: SignUpScreen.builder,
    // homeScreen: HomeScreen.builder,
    // moodScreen: MoodScreen.builder,
    // calendarScreen: CalendarScreen.builder,
    // toDoListScreen: ToDoListScreen.builder,
    // profileScreen: ProfileScreen.builder,
    // settingsScreen: SettingsScreen.builder,
    // moodCounterScreen: MoodCounterScreen.builder,
    // appNavigationScreen: AppNavigationScreen.builder
  };
}