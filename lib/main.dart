import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pti_prabowo_adi/view_models/login_view_model.dart';
import 'package:test_pti_prabowo_adi/views/bahari/bahari_screen.dart';
import 'package:test_pti_prabowo_adi/views/home/home_screen.dart';
import 'package:test_pti_prabowo_adi/views/login/login_screen.dart';
import 'package:test_pti_prabowo_adi/views/splash_screen.dart';
// import 'package:sisi_app_prabowo/models/notification_view_model.dart';
// import 'package:sisi_app_prabowo/view_models/check_in_view_model.dart';
// import 'package:sisi_app_prabowo/view_models/login_view_model.dart';
// import 'package:sisi_app_prabowo/view_models/request_time_off_view_model.dart';
// import 'package:sisi_app_prabowo/views/comingsoon_screen.dart';
// import 'package:sisi_app_prabowo/views/home/home_screen.dart';
// import 'package:sisi_app_prabowo/views/login/login_screen.dart';
// import 'package:sisi_app_prabowo/views/perizinan/perizinan_screen.dart';
// import 'package:sisi_app_prabowo/views/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final cameras = await availableCameras(); // Fetch available cameras

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => CheckInViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        // ChangeNotifierProvider(create: (_) => NotificationViewModel()..fetchNotifications()),
        // ChangeNotifierProvider(create: (_) => RequestTimeOffViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        theme: ThemeData(
          primaryColor: Color(0xFF2D2E74), // Define the primary color here
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF027DD7),
            secondary: Color(0xFF005BB5), // Define a secondary color if needed
          ),
        ),
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
          '/bahari': (context) => BahariScreen(),
        },
      ),
    );
  }
}
